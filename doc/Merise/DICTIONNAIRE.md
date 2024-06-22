| Entity                | Atribut             | Type      | Height      | Constraint                            | Description                                  | Exemple                                     |
| --------------------- | ------------------- | --------- | ----------- | ------------------------------------- | -------------------------------------------- | ------------------------------------------- |
| **User**              |                     |           |             |                                       |                                              |                                             |
|                       | id_user             | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique user identifier                       | 0874628                                     |
|                       | first_name_user     | VARCHAR   | 50          | NOT NULL                              | User's first name                            | Selina                                      |
|                       | last_name_user      | VARCHAR   | 50          | NOT NULL                              | User's last name                             | Kyle                                        |
|                       | image_profil        | VARCHER   | 100         | Optionnel                             | User profile photo                           | https://eidnn_fdbkfkdbdj...                 |
|                       | mail_user           | INTEGER   | 11          | NOT NULL                              | User email                                   | theCat@eastEnd.got                          |
|                       | password_user       | VARCHAR   | 50          | NOT NULL                              | User password                                | /!cAt\*\*\*                                 |
|                       | role                | VARCHAR   | 25          | NOT NULL                              | The user's role                              | Admin                                       |
| **Post_informations** |                     |           |             |                                       |                                              |                                             |
|                       | id_post_information | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique post identifier                       | 98567                                       |
|                       | posted_date         | TIMESTAMP | -           | NOT NULL                              | Date of publication                          | 04/02/2024                                  |
|                       | title_post          | VARCHAR   | 50          | NOT NULL                              | Title of post                                | Chat trouvé                                 |
|                       | description_post    | TEXT      | -           | NOT NULL                              | Descriptive content of the publication       | J'ai trouvé un chat au coin entre la rue... |
|                       | category_post       | VARCHAR   | 20          | NOT NULL                              | Category to which the publication belongs    | Perdu/Trouvé                                |
| **Illustrations**     |                     |           |             |                                       |                                              |                                             |
|                       | id_content          | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique content identifier                    | 0287                                        |
|                       | content             | TEXT      | -           | NOT NULL                              | Images, videos to illustrate the publication | https://cat_image...                        |
| **Types**             |                     |           |             |                                       |                                              |                                             |
|                       | id_type             | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique type identifier                       | 02641                                       |
|                       | type                | VARCHAR   | 20          | NOT NULL                              | publication type                             | Services                                    |
| **Prices**            |                     |           |             |                                       |                                              |                                             |
|                       | id_price            | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique price identifier                      | 00283920                                    |
|                       | price               | NUMERIC   | 5,2         | NOT NULL                              | Price of a purchase-type publication         | 56,00                                       |
| **Dates_events**      |                     |           |             |                                       |                                              |                                             |
|                       | id_date_event       | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique date event identifier                 | 070098                                      |
|                       | date_start          | DATE      | -           | NOT NULL                              | Event start date                             | 20/06/2024                                  |
|                       | date_end            | DATE      | -           | Optionnel                             | Event end date                               | 28/07/2024                                  |
|                       | id_post_information | INTEGER   | FOREIGN KEY |
| **Comments**          |                     |           |             |                                       |                                              |                                             |
|                       | id_comment          | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique comment identifier                    | 0543268                                     |
|                       | comment             | TEXT      | -           | NOT NULL                              |                                              |                                             |
| **Messages**          |                     |           |             |                                       |                                              |                                             |
|                       | id_message          | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique message identifier                    | 00123                                       |
|                       | message             | VARCHAR   | 250         | NOT NULL                              | Text written by a user about a publication   | Bonjour, j'ai besoin de tes services...     |
|                       | sent_message        | TIMESTAMP | -           | NOT NULL                              | Date the message was sent                    | 14/09/2024 16:20                            |
| **Adresses**          |                     |           |             |                                       |                                              |                                             |
|                       | id_address          | INTEGER   | -           | NOT NULL, PRIMARY KEY, AUTO INCREMENT | Unique address identifier                    | 065400                                      |
|                       | number_street       | VARCHAR   | 50          | Optionnel                             | User's voice number                          | 23                                          |
|                       | name_street         | VARCHAR   | 50          | NOT NULL                              | User's street name                           | Midtown avenue                              |
|                       | zip_code            | VARCHAR   | 15          | NOT NULL                              | User's postal code                           | 19880                                       |
|                       | city                | VARCHAR   | 50          | NOT NULL                              | User's city                                  | Gotham                                      |
| **Groups**            |                     |           |             |                                       |                                              |                                             |
|                       | name_group          | VARCHAR   | 50          | NOT NULL                              | Neighborhood group name                      | Les résidences occitanes                    |
|                       | street_group        | VARCHAR   | 50          | NOT NULL                              | The street name of neighborhood group        | Avenue d'Occitnaie                          |
|                       | postal_code_group   | VARCHAR   | 50          | NOT NULL                              | Neighborhood group's postal code             | 31011                                       |
|                       | city_group          | VARCHAR   | 50          | NOT NULL                              | Neighborhood group's city                    | Toulouse                                    |
| **Contains**          |                     |           |
|                       | id_content          |
|                       | id_message          |           |
| **Leave**             |
|                       | id_user             |
|                       | id_address          |
| **Link**              |
|                       | id_group            |
|                       | id_address          |           |
