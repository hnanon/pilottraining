module DateSelectHelper
  def date_select_year(object, field_name, opts = {}, html_opts = {})
    merged_opts = {
      :prompt => "",
      :start_year => Time.zone.now.year,
      :end_year => Time.zone.now.year + 4,
      :field_name => :"#{field_name}(1i)",
      :prefix => object.class.name.underscore
    }.merge(opts)

    select_year(object.send(field_name).try(:year), merged_opts, html_opts)
  end

  def date_select_month(object, field_name, opts = {}, html_opts = {})
    merged_opts = {
      :prompt => "",
      :field_name => :"#{field_name}(2i)",
      :prefix => object.class.name.underscore
    }.merge(opts)

    select_month(object.send(field_name).try(:month), merged_opts, html_opts)
  end

  def date_select_day(object, field_name, opts = {}, html_opts = {})
    merged_opts = {
      :prompt => "",
      :field_name => :"#{field_name}(3i)",
      :prefix => object.class.name.underscore
    }.merge(opts)

    select_day(object.send(field_name).try(:day), merged_opts, html_opts)
  end
end