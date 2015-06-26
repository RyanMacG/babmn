module ApplicationHelper
  def page_title
    base_title = 'BABMN'
    if @page_title
      title = base_title + ' | ' + @page_title
    else
      title = base_title
    end
    title
  end
end
