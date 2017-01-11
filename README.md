# Repres React React资源表现引擎

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/repres-react/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/repres-react.svg)](https://badge.fury.io/rb/repres-react)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/repres-react.svg)](https://gemnasium.com/github.com/topbitdu/repres-react)

Repres (REsource PRESentation) is a series of resource presentation engines. The React resource presentation engine includes React-based resource presentation templates &amp; snippets. Repres (资源表现)是一系列的资源表现引擎。React 资源表现引擎包括基于React的资源表现模版和片段。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'repres-react'
```



## Include the Helper in your Application Controller before Render the Script with the helper methods

```ruby
helper Repres::React::ApplicationHelper
```



## Render the Pre-defined Partials

### Render the Script

The Script partial includes the HTML script tags for React and its extensions. The [Boot CDN](http://cdn.bootcss.com/) server is supported by default. However, the :cdn option could be passed in to support other CDN servers. The CDN servers must syncrhonize with [cdnjs](https://github.com/cdnjs/cdnjs).

The following code snippet does __not__ load any JavaScript library.
```erb
<%= render partial: 'repres/react/script' %>
<!-- or the following line works identically -->
<%= react_script %>
```

The following code snippet loads the latest React JavaScript library.
```erb
<%= render partial: 'repres/bootstrap/script', locals: { options: { react: true, 'react-dom': true } } %>
<!-- or the following line works identically -->
<%= react_script react: true, 'react-dom': true %>
```

The following code snippet loads the React JavaScript library with the given version.
```erb
<%= render partial: 'repres/bootstrap/script', locals: { options: { react: { version: '15.0.2', cdn: 'cdn.server.com' }, 'react-dom': { version: '15.0.2' } } } %>
<!-- or the following line works identically -->
<%= react_script react: { version: '15.0.2', cdn: 'cdn.server.com' }, 'react-dom': { version: '15.0.2' } %>
```

The following JavaScript libraries are switchable, and the version can be configurable:
- :react
- :'react-dom'
- :redux
