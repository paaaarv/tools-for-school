# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has many supplies, category has many supplies)
- [ ] Include at least one belongs_to relationship (Supplies belong to Category/user)
- [ ] Include at least one has_many through relationship (User has many categories through supplies/ Category has many users through supplies)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute (Entire form for creating new supply/ donate towards supply)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [ ] Include signup (Devise)
- [ ] Include login (Devise)
- [ ] Include logout (Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL categories/:id/supplies)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
