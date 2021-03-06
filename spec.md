# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has many supplies, category has many supplies)
- [x] Include at least one belongs_to relationship (Supplies belong to Category/user)
- [x] Include at least one has_many through relationship (User has many categories through supplies/ Category has many users through supplies)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (Entire form for creating new supply/ donate towards supply)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL categories/:id/supplies)
- [x] Include nested resource "new" form (can only make new supply/edit supply through categories)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
