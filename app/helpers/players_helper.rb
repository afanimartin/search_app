module PlayersHelper
  def sort_link(column:, label:)
    if column == params[:column]
      link_to(label, list_players_path(column: column, direction: next_direction))
    else
      link_to(label, list_players_path(column: column, direction: :asc))
    end
  end

  def sort_indicator
    tag.span(class: "sort sort-#{params[:direction]}")
  end

  def next_direction
    params[:direction] == :asc ? :asc : :desc
  end
end
