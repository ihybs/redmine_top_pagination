require File.expand_path(File.dirname(__FILE__) + '/../test_helper')

class TopPaginationIssuesTest < ActionController::IntegrationTest
  # same fixtures with Redmine IssuesTest
  fixtures :projects,
    :users,
    :roles,
    :members,
    :member_roles,
    :trackers,
    :projects_trackers,
    :enabled_modules,
    :issue_statuses,
    :issues,
    :enumerations,
    :custom_fields,
    :custom_values,
    :custom_fields_trackers

  context "issues list" do
    setup do
      log_user('jsmith', 'jsmith')
    end

    should "have 2 pagination lists (top and bottom)" do
      get '/issues', :project_id => 'ecookbook'

      assert_response :success
      assert_select "p.pagination", 2
    end
  end
end
