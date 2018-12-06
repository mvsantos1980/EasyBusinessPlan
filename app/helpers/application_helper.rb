module ApplicationHelper
  def nav_link(description, path)
    content_tag(:li, class: 'nav-item') do
      link_to description, path, class: 'nav-link'
    end
  end

  def title title
    content_tag :div, class: 'page-header' do
      content_tag :h2 do
        title
      end
    end
  end

  def date_humanize date
    return '' if date == nil
    date.strftime('%d/%m/%Y %I:%M %p')
  end

  #Controle sobre produtos
  def markup (produto)
    ((1+ Float(produto.profit) / 100.0) / (1- (Float(produto.freightCost)/100.0) - (Float(produto.freightSale)/100.0) - (Float(produto.commission)/100.0) - (Float(produto.tax)/100.0)))
  end

  def preco_venda (produto)
    Float(produto.cost) * (markup produto)
  end

  def total_venda produto
    Float(produto.quantity) * (preco_venda produto)
  end

  #Controle sobre custos
  def soma_custos_fixos (fixed_costs)
    fixed_costs.water +
        fixed_costs.light +
        fixed_costs.telephone +
        fixed_costs.counter +
        fixed_costs.vehicle +
        fixed_costs.officeSupplies +
        fixed_costs.rental +
        fixed_costs.maintenance +
        fixed_costs.taxes +
        fixed_costs.other
  end
end
