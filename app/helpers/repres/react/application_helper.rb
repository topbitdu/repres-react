module Repres::React::ApplicationHelper

  def react_script(options = {})
    render partial: 'repres/react/script', locals: { options: options }
  end

end
