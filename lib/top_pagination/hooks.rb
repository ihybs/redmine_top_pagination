module TopPagination
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_index_bottom, :partial => 'top_pagination/issues_index_hook'
  end
end
