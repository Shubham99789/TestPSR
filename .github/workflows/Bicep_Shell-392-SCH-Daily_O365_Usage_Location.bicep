param workflows_Shell_392_SCH_Daily_O365_Usage_Location_name string = 'Shell-392-SCH-Daily_O365_Usage_Location'
param connections_keyvault_externalid string = '/subscriptions/d6abefe9-d8b8-4f4c-880b-1c7f6992b04d/resourceGroups/NVMT-ISID-EK1-RGP-Recovery-Vault/providers/Microsoft.Web/connections/keyvault'

resource workflows_Shell_392_SCH_Daily_O365_Usage_Location_name_resource 'Microsoft.Logic/workflows@2017-07-01' = {
  name: workflows_Shell_392_SCH_Daily_O365_Usage_Location_name
  location: 'northcentralus'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {
        '$connections': {
          defaultValue: {}
          type: 'Object'
        }
      }
      triggers: {
        Recurrence: {
          recurrence: {
            frequency: 'Day'
            interval: 3
            timeZone: 'India Standard Time'
          }
          evaluatedRecurrence: {
            frequency: 'Day'
            interval: 3
            timeZone: 'India Standard Time'
          }
          type: 'Recurrence'
        }
      }
      actions: {
        ClientId: {
          runAfter: {
            TenantId: [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'ClientId'
                type: 'string'
                value: '86e111ff-fa41-4401-9f9b-509efdbe87e0'
              }
            ]
          }
        }
        CountryHashTable: {
          runAfter: {
            'FileName-MissingCountryList': [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'CountryHashTable'
                type: 'object'
                value: {
                  Afghanistan: 'AF'
                  'Aland Islands': 'AX'
                  Albania: 'AL'
                  Algeria: 'DZ'
                  'American Samoa': 'AS'
                  Andorra: 'AD'
                  Angola: 'AO'
                  Anguilla: 'AI'
                  Antarctica: 'AQ'
                  'Antigua and Barbuda': 'AG'
                  Argentina: 'AR'
                  Armenia: 'AM'
                  Aruba: 'AW'
                  Australia: 'AU'
                  Austria: 'AT'
                  Azerbaijan: 'AZ'
                  'Bahamas (the)': 'BS'
                  Bahrain: 'BH'
                  Bangladesh: 'BD'
                  Barbados: 'BB'
                  Belarus: 'BY'
                  Belgium: 'BE'
                  Belize: 'BZ'
                  Benin: 'BJ'
                  Bermuda: 'BM'
                  Bhutan: 'BT'
                  'Bolivia (Plurinational State of)': 'BO'
                  'Bonaire, Sint Eustatius and Saba': 'BQ'
                  'Bosnia and Herzegovina': 'BA'
                  Botswana: 'BW'
                  'Bouvet Island': 'BV'
                  Brazil: 'BR'
                  'British Indian Ocean Territory (the)': 'IO'
                  'Brunei Darussalam': 'BN'
                  Bulgaria: 'BG'
                  'Burkina Faso': 'BF'
                  Burundi: 'BI'
                  'Cabo Verde': 'CV'
                  Cambodia: 'KH'
                  Cameroon: 'CM'
                  Canada: 'CA'
                  'Cayman Islands (the)': 'KY'
                  'Central African Republic (the)': 'CF'
                  Chad: 'TD'
                  Chile: 'CL'
                  China: 'CN'
                  'Christmas Island': 'CX'
                  'Cocos (Keeling) Islands (the)': 'CC'
                  Colombia: 'CO'
                  'Comoros (the)': 'KM'
                  'Congo (the Democratic Republic of the)': 'CD'
                  'Congo (the)': 'CG'
                  'Cook Islands (the)': 'CK'
                  'Costa Rica': 'CR'
                  Croatia: 'HR'
                  Cuba: 'CU'
                  'Curaçao': 'CW'
                  Cyprus: 'CY'
                  Czechia: 'CZ'
                  'Côte d\'Ivoire': 'CI'
                  Denmark: 'DK'
                  Djibouti: 'DJ'
                  Dominica: 'DM'
                  'Dominican Republic (the)': 'DO'
                  Ecuador: 'EC'
                  Egypt: 'EG'
                  'El Salvador': 'SV'
                  'Equatorial Guinea': 'GQ'
                  Eritrea: 'ER'
                  Estonia: 'EE'
                  Eswatini: 'SZ'
                  Ethiopia: 'ET'
                  'Falkland Islands (the) [Malvinas]': 'FK'
                  'Faroe Islands (the)': 'FO'
                  Fiji: 'FJ'
                  Finland: 'FI'
                  France: 'FR'
                  'French Guiana': 'GF'
                  'French Polynesia': 'PF'
                  'French Southern Territories (the)': 'TF'
                  Gabon: 'GA'
                  'Gambia (the)': 'GM'
                  Georgia: 'GE'
                  Germany: 'DE'
                  Ghana: 'GH'
                  Gibraltar: 'GI'
                  Greece: 'GR'
                  Greenland: 'GL'
                  Grenada: 'GD'
                  Guadeloupe: 'GP'
                  Guam: 'GU'
                  Guatemala: 'GT'
                  Guernsey: 'GG'
                  Guinea: 'GN'
                  'Guinea-Bissau': 'GW'
                  Guyana: 'GY'
                  Haiti: 'HT'
                  'Heard Island and McDonald Islands': 'HM'
                  'Holy See (the)': 'VA'
                  Honduras: 'HN'
                  'Hong Kong': 'HK'
                  Hungary: 'HU'
                  Iceland: 'IS'
                  India: 'IN'
                  Indonesia: 'ID'
                  'Iran (Islamic Republic of)': 'IR'
                  Iraq: 'IQ'
                  Ireland: 'IE'
                  'Isle of Man': 'IM'
                  Israel: 'IL'
                  Italy: 'IT'
                  Jamaica: 'JM'
                  Japan: 'JP'
                  Jersey: 'JE'
                  Jordan: 'JO'
                  Kazakhstan: 'KZ'
                  Kenya: 'KE'
                  Kiribati: 'KI'
                  'Korea (the Democratic People\'s Republic of)': 'KP'
                  'Korea (the Republic of)': 'KR'
                  Kuwait: 'KW'
                  Kyrgyzstan: 'KG'
                  'Lao People\'s Democratic Republic (the)': 'LA'
                  Latvia: 'LV'
                  Lebanon: 'LB'
                  Lesotho: 'LS'
                  Liberia: 'LR'
                  Libya: 'LY'
                  Liechtenstein: 'LI'
                  Lithuania: 'LT'
                  Luxembourg: 'LU'
                  Macao: 'MO'
                  Madagascar: 'MG'
                  Malawi: 'MW'
                  Malaysia: 'MY'
                  Maldives: 'MV'
                  Mali: 'ML'
                  Malta: 'MT'
                  'Marshall Islands (the)': 'MH'
                  Martinique: 'MQ'
                  Mauritania: 'MR'
                  Mauritius: 'MU'
                  Mayotte: 'YT'
                  Mexico: 'MX'
                  'Micronesia (Federated States of)': 'FM'
                  'Moldova (the Republic of)': 'MD'
                  Monaco: 'MC'
                  Mongolia: 'MN'
                  Montenegro: 'ME'
                  Montserrat: 'MS'
                  Morocco: 'MA'
                  Mozambique: 'MZ'
                  Myanmar: 'MM'
                  Namibia: 'NA'
                  Nauru: 'NR'
                  Nepal: 'NP'
                  'Netherlands (the)': 'NL'
                  'New Caledonia': 'NC'
                  'New Zealand': 'NZ'
                  Nicaragua: 'NI'
                  'Niger (the)': 'NE'
                  Nigeria: 'NG'
                  Niue: 'NU'
                  'Norfolk Island': 'NF'
                  'North Macedonia': 'MK'
                  'Northern Mariana Islands (the)': 'MP'
                  Norway: 'NO'
                  Oman: 'OM'
                  Pakistan: 'PK'
                  Palau: 'PW'
                  'Palestine, State of': 'PS'
                  Panama: 'PA'
                  'Papua New Guinea': 'PG'
                  Paraguay: 'PY'
                  Peru: 'PE'
                  'Philippines (the)': 'PH'
                  Pitcairn: 'PN'
                  Poland: 'PL'
                  Portugal: 'PT'
                  'Puerto Rico': 'PR'
                  Qatar: 'QA'
                  Romania: 'RO'
                  'Russian Federation (the)': 'RU'
                  Rwanda: 'RW'
                  'Réunion': 'RE'
                  'Saint Barthélemy': 'BL'
                  'Saint Helena, Ascension and Tristan da Cunha': 'SH'
                  'Saint Kitts and Nevis': 'KN'
                  'Saint Lucia': 'LC'
                  'Saint Martin (French part)': 'MF'
                  'Saint Pierre and Miquelon': 'PM'
                  'Saint Vincent and the Grenadines': 'VC'
                  Samoa: 'WS'
                  'San Marino': 'SM'
                  'Sao Tome and Principe': 'ST'
                  'Saudi Arabia': 'SA'
                  Senegal: 'SN'
                  Serbia: 'RS'
                  Seychelles: 'SC'
                  'Sierra Leone': 'SL'
                  Singapore: 'SG'
                  'Sint Maarten (Dutch part)': 'SX'
                  Slovakia: 'SK'
                  Slovenia: 'SI'
                  'Solomon Islands': 'SB'
                  Somalia: 'SO'
                  'South Africa': 'ZA'
                  'South Georgia and the South Sandwich Islands': 'GS'
                  'South Sudan': 'SS'
                  Spain: 'ES'
                  'Sri Lanka': 'LK'
                  'Sudan (the)': 'SD'
                  Suriname: 'SR'
                  'Svalbard and Jan Mayen': 'SJ'
                  Sweden: 'SE'
                  Switzerland: 'CH'
                  'Syrian Arab Republic (the)': 'SY'
                  'Taiwan (Province of China)': 'TW'
                  Tajikistan: 'TJ'
                  'Tanzania, the United Republic of': 'TZ'
                  Thailand: 'TH'
                  'Timor-Leste': 'TL'
                  Togo: 'TG'
                  Tokelau: 'TK'
                  Tonga: 'TO'
                  'Trinidad and Tobago': 'TT'
                  Tunisia: 'TN'
                  Turkey: 'TR'
                  Turkmenistan: 'TM'
                  'Turks and Caicos Islands (the)': 'TC'
                  Tuvalu: 'TV'
                  Uganda: 'UG'
                  Ukraine: 'UA'
                  'United Arab Emirates (the)': 'AE'
                  'United Kingdom of Great Britain and Northern Ireland (the)': 'GB'
                  'United States Minor Outlying Islands (the)': 'UM'
                  'United States of America (the)': 'US'
                  Uruguay: 'UY'
                  Uzbekistan: 'UZ'
                  Vanuatu: 'VU'
                  'Venezuela (Bolivarian Republic of)': 'VE'
                  'Viet Nam': 'VN'
                  'Virgin Islands (British)': 'VG'
                  'Virgin Islands (U.S.)': 'VI'
                  'Wallis and Futuna': 'WF'
                  'Western Sahara': 'EH'
                  Yemen: 'YE'
                  Zambia: 'ZM'
                  Zimbabwe: 'ZW'
                }
              }
            ]
          }
        }
        For_Each_1: {
          foreach: '@ body(\'Parse_-_Output_of_all_users_with_usageLocation_as_Null\')?[\'value\']'
          actions: {
            Condition: {
              actions: {
                'HTTP_-_Upate_to_NL': {
                  type: 'Http'
                  inputs: {
                    uri: 'https://graph.microsoft.com/v1.0/users/@{items(\'For_Each_1\')?[\'id\']}'
                    method: 'PATCH'
                    body: {
                      usageLocation: 'NL'
                    }
                    authentication: {
                      type: 'ActiveDirectoryOAuth'
                      tenant: '@{variables(\'TenantId\')}'
                      audience: 'https://graph.microsoft.com'
                      clientId: '@{variables(\'ClientId\')}'
                      pfx: '@{body(\'Get_secret\')?[\'value\']}'
                      password: '@{null}'
                    }
                  }
                }
                Append_to_array_variable: {
                  runAfter: {
                    'HTTP_-_Upate_to_NL': [
                      'Succeeded'
                    ]
                  }
                  type: 'AppendToArrayVariable'
                  inputs: {
                    name: 'UpdateUsersToNL'
                    value: {
                      userPrincipalName: '@items(\'For_Each_1\')?[\'userPrincipalName\']'
                      country: 'Netherlands'
                      usageLocation: 'NL'
                      displayName: '@items(\'For_Each_1\')?[\'displayName\']'
                      status: 'Success'
                    }
                  }
                }
              }
              else: {
                actions: {
                  'HTTP_-_Update_to_Country_Code_from_HashTable': {
                    type: 'Http'
                    inputs: {
                      uri: 'https://graph.microsoft.com/v1.0/users/@{items(\'For_Each_1\')?[\'id\']}'
                      method: 'PATCH'
                      body: {
                        usageLocation: '@ variables(\'CountryHashTable\')[items(\'For_Each_1\')?[\'country\']]'
                      }
                      authentication: {
                        type: 'ActiveDirectoryOAuth'
                        tenant: '@{variables(\'TenantId\')}'
                        audience: 'https://graph.microsoft.com'
                        clientId: '@{variables(\'ClientId\')}'
                        pfx: '@{body(\'Get_secret\')?[\'value\']}'
                        password: '@{null}'
                      }
                    }
                  }
                }
              }
              expression: {
                or: [
                  {
                    equals: [
                      '@ items(\'For_Each_1\')?[\'country\']'
                      '@null'
                    ]
                  }
                ]
              }
              type: 'If'
            }
          }
          runAfter: {
            _UpdateUsersToNL: [
              'Succeeded'
            ]
          }
          type: 'Foreach'
          runtimeConfiguration: {
            concurrency: {
              repetitions: 1
            }
          }
        }
        'HTTP_-_Fetch_All_users_with_usageLocation_as_Null': {
          runAfter: {
            usageLocation_eq_null_Variable: [
              'Succeeded'
            ]
          }
          type: 'Http'
          inputs: {
            uri: 'https://graph.microsoft.com/v1.0/users?&$filter= @{variables(\'usageLocation eq null_Variable\')}&$count=true&$select=userPrincipalName,displayName,country,usageLocation,id'
            method: 'GET'
            headers: {
              ConsistencyLevel: 'eventual'
            }
            authentication: {
              type: 'ActiveDirectoryOAuth'
              tenant: '@{variables(\'TenantId\')}'
              audience: 'https://graph.microsoft.com/'
              clientId: '@{variables(\'ClientId\')}'
              pfx: '@{body(\'Get_secret\')?[\'value\']}'
              password: '@{null}'
            }
          }
          runtimeConfiguration: {
            paginationPolicy: {
              minimumItemCount: 100000
            }
          }
        }
        'Parse_-_Output_of_all_users_with_usageLocation_as_Null': {
          runAfter: {
            'HTTP_-_Fetch_All_users_with_usageLocation_as_Null': [
              'Succeeded'
            ]
          }
          type: 'ParseJson'
          inputs: {
            content: '@body(\'HTTP_-_Fetch_All_users_with_usageLocation_as_Null\')'
            schema: {
              type: 'object'
              properties: {
                statusCode: {
                  type: 'integer'
                }
                headers: {
                  type: 'object'
                  properties: {
                    'Cache-Control': {
                      type: 'string'
                    }
                    'Transfer-Encoding': {
                      type: 'string'
                    }
                    Vary: {
                      type: 'string'
                    }
                    'Strict-Transport-Security': {
                      type: 'string'
                    }
                    'request-id': {
                      type: 'string'
                    }
                    'client-request-id': {
                      type: 'string'
                    }
                    'x-ms-ags-diagnostic': {
                      type: 'string'
                    }
                    'x-ms-resource-unit': {
                      type: 'string'
                    }
                    'OData-Version': {
                      type: 'string'
                    }
                    Date: {
                      type: 'string'
                    }
                    'Content-Type': {
                      type: 'string'
                    }
                    'Content-Length': {
                      type: 'string'
                    }
                  }
                }
                body: {
                  type: 'object'
                  properties: {
                    '@@odata.context': {
                      type: 'string'
                    }
                    '@@odata.count': {
                      type: 'integer'
                    }
                    value: {
                      type: 'array'
                      items: {
                        type: 'object'
                        properties: {
                          '@@odata.type': {
                            type: 'string'
                          }
                          userPrincipalName: {
                            type: 'string'
                          }
                          displayName: {
                            type: 'string'
                          }
                          country: {
                            type: 'string'
                          }
                          usageLocation: {}
                          id: {
                            type: 'string'
                          }
                        }
                        required: [
                          '@@odata.type'
                          'userPrincipalName'
                          'displayName'
                          'country'
                          'usageLocation'
                          'id'
                        ]
                      }
                    }
                  }
                }
              }
            }
          }
        }
        TenantId: {
          runAfter: {}
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'TenantId'
                type: 'string'
                value: 'dcac7e0b-5007-4b90-8f3b-39d5d2289aa1'
              }
            ]
          }
        }
        usageLocation_eq_null_Variable: {
          runAfter: {
            CountryHashTable: [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'usageLocation eq null_Variable'
                type: 'string'
                value: 'usageLocation eq null'
              }
            ]
          }
        }
        'Create_CSV_table_-_Userlist': {
          runAfter: {
            Select: [
              'Succeeded'
            ]
          }
          type: 'Table'
          inputs: {
            from: '@body(\'Select\')'
            format: 'CSV'
          }
        }
        Select: {
          runAfter: {
            'Parse_-_Output_of_all_users_with_usageLocation_as_Null': [
              'Succeeded'
            ]
          }
          type: 'Select'
          inputs: {
            from: '@body(\'Parse_-_Output_of_all_users_with_usageLocation_as_Null\')?[\'value\']'
            select: {
              userPrincipalName: '@{item()?[\'userPrincipalName\']}'
              displayName: '@{item()?[\'displayName\']}'
              country: '@{item()?[\'country\']}'
              usageLocation: '@{item()?[\'usageLocation\']}'
            }
          }
        }
        'Create_CSV_table_-_MissingCountryUserList': {
          runAfter: {
            For_Each_1: [
              'Succeeded'
            ]
          }
          type: 'Table'
          inputs: {
            from: '@variables(\'UpdateUsersToNL\')'
            format: 'CSV'
          }
        }
        _UpdateUsersToNL: {
          runAfter: {
            'HTTP-Create_UserList_csv': [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'UpdateUsersToNL'
                type: 'array'
                value: []
              }
            ]
          }
        }
        Get_secret: {
          runAfter: {
            ClientId: [
              'Succeeded'
            ]
          }
          type: 'ApiConnection'
          inputs: {
            host: {
              connection: {
                name: '@parameters(\'$connections\')[\'keyvault\'][\'connectionId\']'
              }
            }
            method: 'get'
            path: '/secrets/@{encodeURIComponent(\'KeyVaultpfx\')}/value'
          }
          runtimeConfiguration: {
            secureData: {
              properties: [
                'inputs'
                'outputs'
              ]
            }
          }
        }
        'HTTP-MissingCountryUserList_csv': {
          runAfter: {
            'Create_CSV_table_-_MissingCountryUserList': [
              'Succeeded'
            ]
          }
          type: 'Http'
          inputs: {
            uri: ' https://graph.microsoft.com/v1.0/sites/@{variables(\'SiteId\')}/drives/@{variables(\'DriveId\')}/root:/data/@{variables(\' FileName-MissingCountryList\')}:/content'
            method: 'PUT'
            headers: {
              'Content-Type': 'binary/octet-stream'
            }
            body: '@string(body(\'Create_CSV_table_-_MissingCountryUserList\'))'
            authentication: {
              type: 'ActiveDirectoryOAuth'
              tenant: '@{variables(\'TenantId\')}'
              audience: 'https://graph.microsoft.com'
              clientId: '@{variables(\'ClientId\')}'
              pfx: '@{body(\'Get_secret\')?[\'value\']}'
              password: '@{null}'
            }
          }
          runtimeConfiguration: {
            contentTransfer: {
              transferMode: 'Chunked'
            }
          }
        }
        'HTTP-Create_UserList_csv': {
          runAfter: {
            'Create_CSV_table_-_Userlist': [
              'Succeeded'
            ]
          }
          type: 'Http'
          inputs: {
            uri: ' https://graph.microsoft.com/v1.0/sites/@{variables(\'SiteId\')}/drives/@{variables(\'DriveId\')}/root:/data/@{variables(\'FileName-UserList\')}:/content'
            method: 'PUT'
            headers: {
              'Content-Type': 'binary/octet-stream'
            }
            body: '@string(body(\'Create_CSV_table_-_Userlist\'))'
            authentication: {
              type: 'ActiveDirectoryOAuth'
              tenant: '@{variables(\'TenantId\')}'
              audience: 'https://graph.microsoft.com/'
              clientId: '@{variables(\'ClientId\')}'
              pfx: '@{body(\'Get_secret\')?[\'value\']}'
              password: '@{null}'
            }
          }
          runtimeConfiguration: {
            contentTransfer: {
              transferMode: 'Chunked'
            }
          }
        }
        _SiteId: {
          runAfter: {
            Get_secret: [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'SiteId'
                type: 'string'
                value: 'a5c5ca51-ab90-49f3-b122-e63419bc8a55'
              }
            ]
          }
        }
        DriveId: {
          runAfter: {
            _SiteId: [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'DriveId'
                type: 'string'
                value: 'b!UcrFpZCr80mxIuY0GbyKVbALHkHU2nRGl_Q457XgiwJN83ySWvRmToXgAUcbJ1Nv'
              }
            ]
          }
        }
        'FileName-MissingCountryList': {
          runAfter: {
            'FileName-UserList': [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: ' FileName-MissingCountryList'
                type: 'string'
                value: 'MissingCountryUserList_@{utcNow(\'yyyy-MMM-dd-hh-mmtt\')}.csv'
              }
            ]
          }
        }
        'FileName-UserList': {
          runAfter: {
            DriveId: [
              'Succeeded'
            ]
          }
          type: 'InitializeVariable'
          inputs: {
            variables: [
              {
                name: 'FileName-UserList'
                type: 'string'
                value: 'UserList_@{utcNow(\'yyyy-MMM-dd-hh-mmtt\')}.csv'
              }
            ]
          }
        }
      }
      outputs: {}
    }
    parameters: {
      '$connections': {
        value: {
          keyvault: {
            id: '/subscriptions/d6abefe9-d8b8-4f4c-880b-1c7f6992b04d/providers/Microsoft.Web/locations/northcentralus/managedApis/keyvault'
            connectionId: connections_keyvault_externalid
            connectionName: 'keyvault'
          }
        }
      }
    }
  }
}
