# Blog app - Add forms

## Learning objectives
- Use preprocessed HTML file with embedded Ruby code.
- Use layouts and templates for shared content.

### Estimated time: 3h

## Description
In this project you will be adding forms to your Blog app.

*IMPORTANT NOTE: Read **all** requirements before you start building your project.*

### General requirements

- Make sure that there are [no linter errors](https://github.com/microverseinc/linters-config).
- Make sure that you have used correct [Gitflow](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/git-github/articles/gitflow.md).
- Make sure that you documented your work [in a professional way](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/documentation/articles/professional_repo_rules.md).

### Ruby requirements
- Follow our list of [best practices for Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/articles/ruby_best_practices.md).

### Project requirements
-  Create a method called `current_user` in your ApplicationController to make current user data available to all controllers.
    -  It will return the first user from the database.
    -  Don't worry about proper authentication at this time. You will add it in the upcoming projects.
- Create forms to perform the following functions:
    - Creates a Post on behalf of the `current_user` (use the method that you created in your ApplicationController).
    - Create a comment on behalf of the `current_user` (use the method that you created in your ApplicationController).
- Allow Users to add likes to Posts.

### Need a big picture? 

Remind me about [the big picture of this project](../sneak_peek.md).


## Work and submission mode

- You should submit this activity **individually.**

## Code review

Follow [these steps](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/code-review/articles/how_to_ask_for_a_code_review.md) to request a code review of your project.

## Submit your project

After the final approval from a code reviewer, you need to submit your project.
[Read this FAQ for a reminder on how to submit your project.](https://microverse.zendesk.com/hc/en-us/articles/360061344234)
Now go to your Student Dashboard and submit your project.

------

_If you spot any bugs or issues in this activity, you can [open an issue with your proposed change](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/git-github/articles/open_issue.md)._
