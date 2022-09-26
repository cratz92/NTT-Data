

>>>>> Esquema das pastas 

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
--> |_data.tf ****



* module(s) do respectivo recurso 
** similar ao que fazemos com os templates dos recursos mas nos modules
*** onde definimos os valores das variaveis dos modules
**** de modo a reduzir quantidade de leituras que fazemos. passamos a ter um ficheiro onde todas as chamadas do tipo "data" são feitas, 
porém o uso intercalado do output com o data na pasta do template, permite que possamos aceder ao recurso de outros ficheiros sem termos
de voltar a realizar uma call do tipo Data


>>>>>  RENOMEAR variaveis  <<<<<<<

< resource_name > + "_" + < atributo > 

e.g.  variável para o name dentro do resource group ficaria ---> "resource_group_name"



>>>>   RENOMEAR MODULES   <<<<<

< resource_name > + "_module"

e.g. module correspondente ao resource group ficaria ---->  "resource_group_module"