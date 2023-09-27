- dashboard: inventory_management
  title: Inventory Management
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 day
  preferred_slug: OuF3UFMo9GVdf9k5JbYvvE
  elements:
  - title: Inventory Categorization by Value
    name: Inventory Categorization by Value
    model: cortex_sap_operational
    explore: inventory_by_plant
    type: looker_pie
    fields: [inventory_by_plant.stock_characteristic, inventory_by_plant.sum_inventory_value_target_currency]
    sorts: [inventory_by_plant.sum_inventory_value_target_currency desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labVal
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
    series_colors: {}
    defaults_version: 1
    show_value_labels: true
    font_size: 12
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'Distribution of inventory value across all stock categories '
    listen:
      Company Name: inventory_by_plant.company_text_butxt
      Stock Type: inventory_by_plant.stock_characteristic
      Material Type: inventory_by_plant.description_of_material_type_mtbez
      Currency: inventory_by_plant.target_currency
      Country: inventory_by_plant.country_key_land1
      Plant: inventory_by_plant.plant_name_name2
      Material: inventory_by_plant.material_text_maktx
    row: 8
    col: 0
    width: 14
    height: 7
  - title: Obsolete Inventory
    name: Obsolete Inventory
    model: cortex_sap_operational
    explore: inventory_by_plant
    type: single_value
    fields: [inventory_by_plant.sum_obsolete_value_target_currency, inventory_by_plant.sum_inventory_value_target_currency]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Total value of Dead or Obsolete stock which can not be used now
    listen:
      Company Name: inventory_by_plant.company_text_butxt
      Stock Type: inventory_by_plant.stock_characteristic
      Material Type: inventory_by_plant.description_of_material_type_mtbez
      Currency: inventory_by_plant.target_currency
      Country: inventory_by_plant.country_key_land1
      Plant: inventory_by_plant.plant_name_name2
      Material: inventory_by_plant.material_text_maktx
    row: 12
    col: 14
    width: 10
    height: 3
  - title: Slow Moving Inventory
    name: Slow Moving Inventory
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    type: single_value
    fields: [inventory_metrics_overview.sum_slow_moving_inventory_target_currency,
      inventory_metrics_overview.sum_inventory_value_target_currency]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Slow moving stock as a % of total stock value
    listen:
      Company Name: inventory_metrics_overview.company_text_butxt
      Material Type: inventory_metrics_overview.material_type
      Currency: inventory_metrics_overview.target_currency
      Country: inventory_metrics_overview.country_key_land1
      Plant: inventory_metrics_overview.plant_name2_name2
      Material: inventory_metrics_overview.material_text_maktx
    row: 8
    col: 14
    width: 10
    height: 3
  - title: Days of Supply for Top Material Groups
    name: Days of Supply for Top Material Groups
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    type: looker_grid
    fields: [sum_of_quantity_menge_2, inventory_metrics_overview.material_group_name_wgbez,
      inventory_metrics_overview.average_days_of_supply]
    sorts: [sum_of_quantity_menge_2 desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_quantity_menge_2
      based_on: inventory_metrics_overview.quantity_menge
      expression: ''
      label: Sum of Quantity Menge
      type: sum
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      inventory_metrics_overview.average_days_of_supply:
        is_active: true
    series_text_format:
      inventory_metrics_overview.average_days_of_supply:
        fg_color: "#1A73E8"
        underline: true
        bold: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab, options: {steps: 4, constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: false, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [sum_of_quantity_menge_2]
    note_state: collapsed
    note_display: hover
    note_text: Days of Supply as of Posting Date for Top 5 Material Groups (Based
      on Inventory Quantity)
    listen:
      Company Name: inventory_metrics_overview.company_text_butxt
      Material Type: inventory_metrics_overview.material_type
      Country: inventory_metrics_overview.country_key_land1
      Plant: inventory_metrics_overview.plant_name2_name2
    row: 2
    col: 12
    width: 12
    height: 5
  - title: Total Inventory Value Trend
    name: Total Inventory Value Trend
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    type: looker_column
    fields: [inventory_metrics_overview.month_end_month, inventory_metrics_overview.sum_inventory_value_target_currency]
    fill_fields: [inventory_metrics_overview.month_end_month]
    filters:
      inventory_metrics_overview.month_end_month: 12 months ago for 12 months
    sorts: [inventory_metrics_overview.month_end_month]
    limit: 12
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: Inventory Value, orientation: left, series: [{axisId: inventory_metrics_overview.inventory_value_global_currency_conv,
            id: inventory_metrics_overview.inventory_value_global_currency_conv, name: Inventory
              Value Global Currency Conv}, {axisId: inventory_metrics_overview.sum_inventory_turn,
            id: inventory_metrics_overview.sum_inventory_turn, name: Inventory Turn}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '10'
    series_colors:
      inventory_metrics_overview.inventory_value_global_currency_conv: "#7CB342"
      inventory_metrics_overview.sum_inventory_value_target_currency: "#7CB342"
    label_color: [grey]
    x_axis_datetime_label: "%b %y"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: "Monthly trend of Inventory value\n\n"
    listen:
      Company Name: inventory_metrics_overview.company_text_butxt
      Material Type: inventory_metrics_overview.material_type
      Currency: inventory_metrics_overview.target_currency
      Country: inventory_metrics_overview.country_key_land1
      Plant: inventory_metrics_overview.plant_name2_name2
      Material: inventory_metrics_overview.material_text_maktx
    row: 16
    col: 0
    width: 12
    height: 6
  - title: Inventory Value by Material Type
    name: Inventory Value by Material Type
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    type: looker_column
    fields: [inventory_metrics_overview.month_end_month, inventory_metrics_overview.material_type,
      inventory_metrics_overview.sum_inventory_value_target_currency]
    pivots: [inventory_metrics_overview.material_type]
    fill_fields: [inventory_metrics_overview.month_end_month]
    filters:
      inventory_metrics_overview.month_end_month: 12 months ago for 12 months
    sorts: [inventory_metrics_overview.material_type, inventory_metrics_overview.month_end_month]
    limit: 12
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
    y_axes: [{label: Inventory Value, orientation: left, series: [{axisId: inventory_metrics_overview.inventory_value_global_currency_conv,
            id: Finished Product - inventory_metrics_overview.inventory_value_global_currency_conv,
            name: Finished Product}, {axisId: inventory_metrics_overview.inventory_value_global_currency_conv,
            id: Operating supplies - inventory_metrics_overview.inventory_value_global_currency_conv,
            name: Operating supplies}, {axisId: inventory_metrics_overview.inventory_value_global_currency_conv,
            id: Raw materials - inventory_metrics_overview.inventory_value_global_currency_conv,
            name: Raw materials}, {axisId: inventory_metrics_overview.inventory_value_global_currency_conv,
            id: Semifinished Product - inventory_metrics_overview.inventory_value_global_currency_conv,
            name: Semifinished Product}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month/Year
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hide_legend: false
    font_size: '10'
    label_value_format: ''
    series_colors:
      Semifinished Product - inventory_metrics_overview.inventory_value_global_currency_conv: "#d3e9ff"
    label_color: []
    label_rotation: -60
    x_axis_datetime_label: "%b %y"
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Monthly trend of Material Stock Value
    listen:
      Company Name: inventory_metrics_overview.company_text_butxt
      Material Type: inventory_metrics_overview.material_type
      Currency: inventory_metrics_overview.target_currency
      Country: inventory_metrics_overview.country_key_land1
      Plant: inventory_metrics_overview.plant_name2_name2
      Material: inventory_metrics_overview.material_text_maktx
    row: 16
    col: 12
    width: 12
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: "<font color=\"#5e5e5e\">What is my inventory distribution across\
      \ stock categories?\t</font>"
    body_text: ''
    row: 7
    col: 0
    width: 14
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: "<font color=\"#5e5e5e\"> What's the total value of our slow moving\
      \ goods?\t</font>"
    body_text: ''
    row: 7
    col: 14
    width: 10
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: <font color="#5e5e5e">What is my total inventory value over the
      past 12 months?</font>
    body_text: ''
    row: 15
    col: 0
    width: 12
    height: 1
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: <font color="#5e5e5e">What's the total value of our obsolete goods?</font>
    body_text: ''
    row: 11
    col: 14
    width: 10
    height: 1
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: "<font color=\"#5e5e5e\">How many days can my available quantity\
      \ cover the expected demand?\t</font>"
    body_text: ''
    row: 1
    col: 12
    width: 12
    height: 1
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: <font color="#5e5e5e">What is my inventory value by material type
      for the past 12 months?</font>
    body_text: ''
    row: 15
    col: 12
    width: 12
    height: 1
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: <font color="#5e5e5e">How many times has my Inventory been sold/replaced
      in the last 6 months?</font>
    body_text: ''
    row: 1
    col: 0
    width: 12
    height: 1
  - name: Inventory Turn for Top Material Groups
    title: Inventory Turn for Top Material Groups
    note_state: collapsed
    note_display: hover
    note_text: Monthly trend of average inventory turn for top 5 material groups by
      value
    merged_queries:
    - model: cortex_sap_operational
      explore: inventory_metrics_overview
      type: looker_column
      fields: [inventory_metrics_overview.sum_inventory_value, inventory_metrics_overview.material_group_name_wgbez]
      filters:
        inventory_metrics_overview.plant_name2_name2: ''
        inventory_metrics_overview.country_key_land1: ''
        inventory_metrics_overview.month_end_month: 6 months ago for 6 months
      sorts: [inventory_metrics_overview.sum_inventory_value desc]
      limit: 5
      column_limit: 5
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      y_axis_scale_mode: linear
      x_axis_reversed: false
      y_axis_reversed: false
      plot_size_by_field: false
      trellis: ''
      stacking: ''
      limit_displayed_rows: false
      legend_position: center
      point_style: none
      show_value_labels: false
      label_density: 25
      x_axis_scale: auto
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      defaults_version: 1
      join_fields: []
    - model: cortex_sap_operational
      explore: inventory_metrics_overview
      type: table
      fields: [inventory_metrics_overview.material_group_name_wgbez, inventory_metrics_overview.month_end_month,
        inventory_metrics_overview.average_inventory_turn]
      filters:
        inventory_metrics_overview.month_end_month: 6 months ago for 6 months
      sorts: [inventory_metrics_overview.material_group_name_wgbez, inventory_metrics_overview.month_end_month]
      limit: 2000
      column_limit: 50
      join_fields:
      - field_name: inventory_metrics_overview.material_group_name_wgbez
        source_field_name: inventory_metrics_overview.material_group_name_wgbez
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Inventory Turn, orientation: left, series: [{axisId: inventory_metrics_overview.sum_inventory_value,
            id: inventory_metrics_overview.sum_inventory_value, name: Sum Inventory
              Value}, {axisId: average_of_inventory_trun, id: average_of_inventory_trun,
            name: Average of Inventory Trun}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '12'
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    x_axis_datetime_label: "%b %y"
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    type: looker_line
    hidden_fields: [q1_inventory_metrics_overview.sum_inventory_value, inventory_metrics_overview.sum_inventory_value]
    pivots: [inventory_metrics_overview.material_group_name_wgbez]
    sorts: [inventory_metrics_overview.month_end_month, inventory_metrics_overview.sum_inventory_value
        desc 0]
    column_limit: 50
    listen:
    - Company Name: inventory_metrics_overview.company_text_butxt
      Country: inventory_metrics_overview.country_key_land1
      Plant: inventory_metrics_overview.plant_name2_name2
    - Company Name: inventory_metrics_overview.company_text_butxt
      Country: inventory_metrics_overview.country_key_land1
      Plant: inventory_metrics_overview.plant_name2_name2
    row: 2
    col: 0
    width: 12
    height: 5
  - name: Inventory Management
    type: text
    title_text: Inventory Management
    subtitle_text: <font color="#5e5e5e">What is our overall inventory position?</font>
    body_text: ''
    row: 0
    col: 5
    width: 14
    height: 1
  filters:
  - name: Currency
    title: Currency
    type: field_filter
    default_value: USD
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    listens_to_filters: []
    field: inventory_metrics_overview.target_currency
  - name: Company Name
    title: Company Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    listens_to_filters: [Country, Plant, Material Type, Material]
    field: inventory_metrics_overview.company_text_butxt
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    listens_to_filters: [Company Name, Plant, Material Type, Material]
    field: inventory_metrics_overview.country_key_land1
  - name: Plant
    title: Plant
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    listens_to_filters: [Company Name, Country, Material Type, Material]
    field: inventory_metrics_overview.plant_name2_name2
  - name: Stock Type
    title: Stock Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: inventory_by_plant
    listens_to_filters: [Company Name, Country, Plant, Material Type, Material]
    field: inventory_by_plant.stock_characteristic
  - name: Material Type
    title: Material Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    listens_to_filters: [Company Name, Country, Plant, Stock Type, Material]
    field: inventory_metrics_overview.material_type
  - name: Material
    title: Material
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: inventory_metrics_overview
    listens_to_filters: [Company Name, Country, Plant, Stock Type, Material Type]
    field: inventory_metrics_overview.material_text_maktx
