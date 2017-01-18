##
# Application Helper 是适用于 HTML 与 React 相关的视图辅助模块。

module Repres::React::ApplicationHelper

  ##
  # 调用 repres/react/script 这个局部脚本， options 是传递的参数。
  def react_script(options = {})
    render partial: 'repres/react/script', locals: { options: options }
  end

end
