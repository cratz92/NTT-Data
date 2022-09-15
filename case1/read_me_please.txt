esquema das pastas

|
templates
    |_<resource_name>
                |_main.tf
                |_variables.tf
                |_output.tf
                |_data.tf

|
modules
    |_<resource_name>.tf *
    |_variables.tf  **
    |_<random_name>.tfvars  ***
    |_locals.tf
    |_provider.tf



* module(s) do respectivo recurso 
** similar ao que fazemos com os templates dos recursos mas nos modules
*** onde definimos os valores das variaveis dos modules