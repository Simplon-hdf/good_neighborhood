| Entity                | Atribut              | Type      | Height | Constraint                            | Description                                           | Exemple                                     |
| --------------------- | -------------------- | --------- | ------ | ------------------------------------- | ----------------------------------------------------- | ------------------------------------------- |
| **User**              |                      |           |        |                                       |                                                       |                                             |
|                       | uuid_user              | VARCHAR   | 50      | NOT NULL, PRIMARY KEY | Unique user identifier                                | "1ef62253-9884-6788-90e2-0fdfe297a776"                                     |
|                       | first_name_user      | VARCHAR   | 50     | NOT NULL                              | User's first name                                     | Selina                                      |
|                       | last_name_user       | VARCHAR   | 50     | NOT NULL                              | User's last name                                      | Kyle                                        |
|                       | image_profil         | VARCHAR   | 100    | Optionnel                             | User profile photo                                    | https://eidnn_fdbkfkdbdj...                 |
|                       | mail_user            | INTEGER   | 11     | NOT NULL                              | User email                                            | theCat@eastEnd.got                          |
|                       | password_user        | VARCHAR   | 50     | NOT NULL                              | User password                                         | /!cAt\*\*\*                                 |
|                       | role                 | VARCHAR   | 25     | NOT NULL                              | The user's role                                       | Admin                                       |
|                       | uuid_group             | VARCHAR   | 50      | NOT NULL, FOREIGN KEY | The identifier of the group to which the user belongs | "1ef62261-8f4d-60ee-a821-fd6c1ea63987"
| **Post_informations** |                      |           |        |                                       |                                                       |                                             |
|                       | uuid_post_information  | VARCHAR   | 50      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique post identifier                                | "1ef62261-8f4d-60ee-a821-fd6c1ea63987"                                       |
|                       | posted_date          | TIMESTAMP | -      | NOT NULL                              | Date of publication                                   | 04/02/2024                                  |
|                       | title_post           | VARCHAR   | 50     | NOT NULL                              | Title of post                                         | Chat trouvé                                 |
|                       | description_post     | TEXT      | -      | NOT NULL                              | Descriptive content of the publication                | J'ai trouvé un chat au coin entre la rue... |
|                       | category_post        | VARCHAR   | 20     | NOT NULL                              | Category to which the publication belongs             | Perdu/Trouvé                                |
|                       | id_user              | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT | The identifier of user who posted publication         |
| **Illustrations**     |                      |           |        |                                       |                                                       |                                             |
|                       | id_content           | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique content identifier                             | 0287                                        |
|                       | content              | TEXT      | -      | NOT NULL                              | Images, videos to illustrate the publication          | https://cat_image...                        |
|                       | id_post_information  | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT |
|                       | id_comment           | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT |
| **Types**             |                      |           |        |                                       |                                                       |                                             |
|                       | id_type              | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique type identifier                                | 02641                                       |
|                       | type                 | VARCHAR   | 20     | NOT NULL                              | publication type                                      | Services                                    |
|                       | id_post_informations | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT |
| **Prices**            |                      |           |        |                                       |                                                       |                                             |
|                       | id_price             | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique price identifier                               | 00283920                                    |
|                       | price                | NUMERIC   | 5,2    | NOT NULL                              | Price of a purchase-type publication                  | 56,00                                       |
|                       | id_post_informations | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT |
| **Dates_events**      |                      |           |        |                                       |                                                       |                                             |
|                       | id_date_event        | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique date event identifier                          | 070098                                      |
|                       | date_start           | DATE      | -      | NOT NULL                              | Event start date                                      | 20/06/2024                                  |
|                       | date_end             | DATE      | -      | Optionnel                             | Event end date                                        | 28/07/2024                                  |
|                       | id_post_information  | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT | Publication identifier linked to date                 |
| **Comments**          |                      |           |        |                                       |                                                       |                                             |
|                       | id_comment           | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique comment identifier                             | 0543268                                     |
|                       | comment              | TEXT      | -      | NOT NULL                              |                                                       |                                             |
|                       | id_user              | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT | ID of user who posted the comment                     | 001234                                      |
| **Messages**          |                      |           |        |                                       |                                                       |                                             |
|                       | id_message           | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique message identifier                             | 00123                                       |
|                       | message              | VARCHAR   | 250    | NOT NULL                              | Text written by a user about a publication            | Bonjour, j'ai besoin de tes services...     |
|                       | sent_message         | TIMESTAMP | -      | NOT NULL                              | Date the message was sent                             | 14/09/2024 16:20                            |
|                       | id_user              | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT | The user ID linked to the message sent                | 922881                                      |
|                       | id_user_1            | INTEGER   | -      | NOT NULL, FOREIGN KEY, AUTO INCREMENT | The user ID linked to the message received            | 00198                                       |
| **Adresses**          |                      |           |        |                                       |                                                       |                                             |
|                       | id_address           | INTEGER   | -      | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique address identifier                             | 065400                                      |
|                       | number_street        | VARCHAR   | 50     | Optionnel                             | User's voice number                                   | 23                                          |
|                       | name_street          | VARCHAR   | 50     | NOT NULL                              | User's street name                                    | Midtown avenue                              |
|                       | zip_code             | VARCHAR   | 15     | NOT NULL                              | User's postal code                                    | 19880                                       |
|                       | city                 | VARCHAR   | 50     | NOT NULL                              | User's city                                           | Gotham                                      |
| **Groups**            |                      |           |        |                                       |                                                       |                                             |
|                       | name_group           | VARCHAR   | 50     | NOT NULL                              | Neighborhood group name                               | Les résidences occitanes                    |
|                       | street_group         | VARCHAR   | 50     | NOT NULL                              | The street name of neighborhood group                 | Avenue d'Occitnaie                          |
|                       | postal_code_group    | VARCHAR   | 50     | NOT NULL                              | Neighborhood group's postal code                      | 31011                                       |
|                       | city_group           | VARCHAR   | 50     | NOT NULL                              | Neighborhood group's city                             | Toulouse                                    |
| **Contains**          |                      |           |
|                       | id_content           | INTEGER   | -      | NOT NULL                              |
|                       | id_message           | INTEGER   | -      | NOT NULL                              |
| **Leave**             |
|                       | id_user              | INTEGER   | -      | NOT NULL                              |
|                       | id_address           | INTEGER   | -      | NOT NULL                              |
| **Link**              |
|                       | id_group             | INTEGER   | -      | NOT NULL                              |
|                       | id_address           | INTEGER   | -      | NOT NULL                              |
