{
  "modelId": "9b4e4097-581f-42bc-8fd0-db9a3232c240",
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "TP_Final Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event EV_BTN_MENU_DOWN\n    in event EV_BTN_MENU_UP\n    in event EV_BTN_AUTO_DEBAJO_DOWN\n    in event EV_BTN_AUTO_DEBAJO_UP\n    in event EV_BTN_NEXT_DOWN\n    in event EV_BTN_NEXT_UP\n    in event EV_BTN_ENTER_DOWN\n    in event EV_BTN_ENTER_UP\n    in event EV_BTN_ACCIONAR_PORTON_DOWN\n    in event EV_BTN_ACCIONAR_PORTON_UP\n    \ninternal:\n    const submenu_max: integer = 3\n    const TICK_MAX: integer = 1\n    const TMPO_ESPERA_MAX: integer = 1\n    const TMPO_DEBAJO_MAX: integer = 1\n    \n    var submenu: integer\n    var tmpo_espera: integer\n    var tmpo_debajo: integer\n    var tick: integer\n    var abriendo:boolean\n    var auto_debajo:boolean = false\n    \n//systema\n    event EV_SYS_MENU\n    event EV_SYS_ACCIONAR_PORTON\n    event EV_SYS_ENTER\n    event EV_SYS_NEXT\n    event EV_SYS_AUTO_DEBAJO_ON\n    event EV_SYS_AUTO_DEBAJO_OFF\n    \n//actuadores\n    event EV_ACT_ABRIENDO_ON\n    event EV_ACT_ABRIENDO_OFF\n    event EV_ACT_CERRANDO_ON\n    event EV_ACT_CERRANDO_OFF\n    event EV_ACT_COMPLETAMENTE_CERRADO_ON\n    event EV_ACT_COMPLETAMENTE_CERRADO_OFF"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -4968,
          "y": 756
        },
        "size": {
          "height": 596,
          "width": 1376
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "z": 2039,
        "embeds": [
          "116a2cc7-49e4-485e-afb1-c957b391d143",
          "860db9c2-8a6c-4d14-805a-f186cf191abe",
          "6c7d9294-cdef-40a7-bbb6-149bf15586d1",
          "41a7cd9d-93d5-4889-a1b5-47a1316c88cf",
          "661bfbc3-6a30-4f56-99ab-3111e668e301",
          "e0fdef51-b8ab-4cda-9b35-2ae7e5c09bb5",
          "0499e06b-e2bf-4855-bf6b-385dc7e12eb5",
          "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99",
          "d3d82cdc-9673-43d8-96e1-c65aab1fc81d",
          "2ed57b66-4045-48eb-beaf-6c842bc07855",
          "8ce0d8b3-cea2-451c-9fbc-20c3f24cba17",
          "960aca79-73f8-49ef-9082-8e0a5476006a",
          "1f0aa6a5-30d9-4998-a2e6-3a672b30c89b"
        ],
        "attrs": {
          "priority": {
            "text": 5
          },
          "name": {
            "text": "Botón de Enter"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4619,
          "y": 1025.25
        },
        "size": {
          "height": 103.5,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99",
        "z": 2040,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4239.487495422363,
          "y": 884
        },
        "size": {
          "height": 98,
          "width": 151.234375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d",
        "z": 2041,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "embeds": [
          "c50fc3d3-360c-4b17-9b2b-4746f4c8f8f1"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_FALLING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -3890.987434387207,
          "y": 982
        },
        "size": {
          "height": 102,
          "width": 134
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2ed57b66-4045-48eb-beaf-6c842bc07855",
        "z": 2042,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_DOWN"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -4896,
          "y": 804
        },
        "size": {
          "width": 255,
          "height": 102
        },
        "angle": 0,
        "linkable": false,
        "id": "8ce0d8b3-cea2-451c-9fbc-20c3f24cba17",
        "z": 2043,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {
          "label": {
            "text": "Aca sería el botón de enter \npara elegir los nuevos parametros",
            "annotations": [
              {
                "start": 0,
                "end": 62,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4258.987495422363,
          "y": 1150.5
        },
        "size": {
          "height": 99,
          "width": 180
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "960aca79-73f8-49ef-9082-8e0a5476006a",
        "z": 2044,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "embeds": [
          "82af32fd-d259-4aae-83c5-10d1013fe562"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_INCREASING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -4845.012565612793,
          "y": 1058
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "1f0aa6a5-30d9-4998-a2e6-3a672b30c89b",
        "z": 2045,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "embeds": [
          "5b10ecf3-4e2f-41ec-a020-64e6632fdafa"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -4845.012565612793,
          "y": 1073
        },
        "id": "5b10ecf3-4e2f-41ec-a020-64e6632fdafa",
        "z": 2055,
        "parent": "1f0aa6a5-30d9-4998-a2e6-3a672b30c89b",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "960aca79-73f8-49ef-9082-8e0a5476006a"
        },
        "target": {
          "id": "960aca79-73f8-49ef-9082-8e0a5476006a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 128,
              "dy": 90,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_UP\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.5189092747108797,
              "offset": 32,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "82af32fd-d259-4aae-83c5-10d1013fe562",
        "z": 2056,
        "parent": "960aca79-73f8-49ef-9082-8e0a5476006a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "960aca79-73f8-49ef-9082-8e0a5476006a"
        },
        "target": {
          "id": "2ed57b66-4045-48eb-beaf-6c842bc07855",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 97.9874267578125,
              "dy": 87.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_DOWN"
              }
            },
            "position": {
              "distance": 0.3748633901591083,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "41a7cd9d-93d5-4889-a1b5-47a1316c88cf",
        "z": 2056,
        "vertices": [
          {
            "x": -3887,
            "y": 1236
          },
          {
            "x": -3793,
            "y": 1161.5
          }
        ],
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "2ed57b66-4045-48eb-beaf-6c842bc07855"
        },
        "target": {
          "id": "960aca79-73f8-49ef-9082-8e0a5476006a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 135.53036499023438,
              "dy": 49.428558349609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_UP\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5558920765050591,
              "offset": 34.0461685685204,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "860db9c2-8a6c-4d14-805a-f186cf191abe",
        "z": 2056,
        "vertices": [
          {
            "x": -3899,
            "y": 1200.43
          }
        ],
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d"
        },
        "target": {
          "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 34.48748779296875,
              "dy": 10,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_DOWN\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.4558741006741255,
              "offset": 35.53630065917969,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c50fc3d3-360c-4b17-9b2b-4746f4c8f8f1",
        "z": 2056,
        "vertices": [
          {
            "x": -4123,
            "y": 846
          },
          {
            "x": -4182.999969482422,
            "y": 846
          }
        ],
        "parent": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d"
        },
        "target": {
          "id": "2ed57b66-4045-48eb-beaf-6c842bc07855",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 73.9874267578125,
              "dy": 13.428573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_DOWN [tick == 0]\n/  raise EV_SYS_ENTER"
              }
            },
            "position": {
              "distance": 0.6723305193944689,
              "offset": -33.69798278808594,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "661bfbc3-6a30-4f56-99ab-3111e668e301",
        "z": 2056,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1f0aa6a5-30d9-4998-a2e6-3a672b30c89b"
        },
        "target": {
          "id": "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.9874267578125,
              "dy": 43.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "116a2cc7-49e4-485e-afb1-c957b391d143",
        "z": 2056,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d"
        },
        "target": {
          "id": "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 16.928573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_UP [tick < TICK_MAX]"
              }
            },
            "position": {
              "distance": 0.4123720161279207,
              "offset": -17,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0499e06b-e2bf-4855-bf6b-385dc7e12eb5",
        "z": 2056,
        "vertices": [
          {
            "x": -4399,
            "y": 954
          }
        ],
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "960aca79-73f8-49ef-9082-8e0a5476006a"
        },
        "target": {
          "id": "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 58,
              "dy": 104.92857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_UP\n[tick == 0]"
              }
            },
            "position": {
              "distance": 0.5022415661308823,
              "offset": -34.92671797606714,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6c7d9294-cdef-40a7-bbb6-149bf15586d1",
        "z": 2056,
        "vertices": [
          {
            "x": -4434,
            "y": 1200
          }
        ],
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99"
        },
        "target": {
          "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.0142822265625,
              "dy": 37.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ENTER_DOWN\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5713198092352041,
              "offset": -32.05614216376717,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e0fdef51-b8ab-4cda-9b35-2ae7e5c09bb5",
        "z": 2056,
        "vertices": [
          {
            "x": -4564,
            "y": 921.4299999999998
          },
          {
            "x": -4479,
            "y": 867.5
          }
        ],
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -5048,
          "y": 1522
        },
        "size": {
          "height": 596,
          "width": 1376
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "z": 2057,
        "embeds": [
          "003d6f4e-147f-4494-8296-0029457e1674",
          "b304cd40-b0ae-4922-aabd-4ca706474f98",
          "725adb93-ed1d-4d53-bd03-e1b036464c6a",
          "e9b2bc7a-4837-4134-a439-054d830d3e37",
          "9e4caff9-46c1-4ea0-bc79-a2abb675c92e",
          "d7da164d-c7f4-4745-ac74-c75841e53567",
          "eea4581c-f143-49c7-b06f-7b94d699fa1d",
          "34e1718c-e9d4-4b20-a81d-30a677904bc2",
          "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9",
          "27516583-68e9-45c7-9cb1-32b226042373",
          "be039445-8228-4c35-9537-531204024f31",
          "1218e9fd-d7ad-4077-b214-cff40da03f1e",
          "e24fcbfc-ce94-4281-95b3-6bd4e970fee3"
        ],
        "attrs": {
          "priority": {
            "text": 6
          },
          "name": {
            "text": "Botón de ACCIONAR PORTON"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4743,
          "y": 1791.25
        },
        "size": {
          "height": 66,
          "width": 180.03750610351562
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "34e1718c-e9d4-4b20-a81d-30a677904bc2",
        "z": 2058,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4319.487495422363,
          "y": 1650
        },
        "size": {
          "height": 98,
          "width": 216.046875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9",
        "z": 2059,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "embeds": [
          "89c6a16f-9821-4f69-87ef-c9e31a202097"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_FALLING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -3970.987434387207,
          "y": 1748
        },
        "size": {
          "height": 102,
          "width": 194.4375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "27516583-68e9-45c7-9cb1-32b226042373",
        "z": 2060,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_DOWN"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -4976,
          "y": 1570
        },
        "size": {
          "width": 255,
          "height": 102
        },
        "angle": 0,
        "linkable": false,
        "id": "be039445-8228-4c35-9537-531204024f31",
        "z": 2061,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {
          "label": {
            "text": "Aca sería el botón para abrir y\ncerrar el porton",
            "annotations": [
              {
                "start": 0,
                "end": 48,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4338.987495422363,
          "y": 1916.5
        },
        "size": {
          "height": 99,
          "width": 237.65000915527344
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e",
        "z": 2062,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "embeds": [
          "b5230ec2-304c-4f3e-b00c-14f41d014c6b"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_INCREASING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -4925.012565612793,
          "y": 1824
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "e24fcbfc-ce94-4281-95b3-6bd4e970fee3",
        "z": 2063,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "embeds": [
          "20ad59ab-d241-4eb2-8386-f27e59733f14"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -4925.012565612793,
          "y": 1839
        },
        "id": "20ad59ab-d241-4eb2-8386-f27e59733f14",
        "z": 2073,
        "parent": "e24fcbfc-ce94-4281-95b3-6bd4e970fee3",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e"
        },
        "target": {
          "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 128,
              "dy": 90,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_UP\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.5189092747108797,
              "offset": 32,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b5230ec2-304c-4f3e-b00c-14f41d014c6b",
        "z": 2074,
        "parent": "1218e9fd-d7ad-4077-b214-cff40da03f1e",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e"
        },
        "target": {
          "id": "27516583-68e9-45c7-9cb1-32b226042373",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 97.9874267578125,
              "dy": 87.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_DOWN"
              }
            },
            "position": {
              "distance": 0.3748633901591083,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e9b2bc7a-4837-4134-a439-054d830d3e37",
        "z": 2074,
        "vertices": [
          {
            "x": -3967,
            "y": 2002
          },
          {
            "x": -3873,
            "y": 1927.5
          }
        ],
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "27516583-68e9-45c7-9cb1-32b226042373"
        },
        "target": {
          "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 135.53036499023438,
              "dy": 49.428558349609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_UP\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5558920765050591,
              "offset": 34.0461685685204,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "725adb93-ed1d-4d53-bd03-e1b036464c6a",
        "z": 2074,
        "vertices": [
          {
            "x": -3979,
            "y": 1966.4300000000003
          }
        ],
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9"
        },
        "target": {
          "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 34.48748779296875,
              "dy": 10,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_DOWN\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.4558741006741255,
              "offset": 35.53630065917969,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "89c6a16f-9821-4f69-87ef-c9e31a202097",
        "z": 2074,
        "vertices": [
          {
            "x": -4203,
            "y": 1612
          },
          {
            "x": -4262.999969482422,
            "y": 1612
          }
        ],
        "parent": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9"
        },
        "target": {
          "id": "27516583-68e9-45c7-9cb1-32b226042373",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 73.9874267578125,
              "dy": 13.428573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_DOWN [tick == 0]\n/  raise EV_SYS_ACCIONAR_PORTON"
              }
            },
            "position": {
              "distance": 0.6723305193944689,
              "offset": -33.69798278808594,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9e4caff9-46c1-4ea0-bc79-a2abb675c92e",
        "z": 2074,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e"
        },
        "target": {
          "id": "34e1718c-e9d4-4b20-a81d-30a677904bc2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 89,
              "dy": 55.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_UP\n[tick == 0]"
              }
            },
            "position": {
              "distance": 0.5022415661308823,
              "offset": -34.92671797606714,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "003d6f4e-147f-4494-8296-0029457e1674",
        "z": 2074,
        "vertices": [
          {
            "x": -4514,
            "y": 1966
          }
        ],
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e24fcbfc-ce94-4281-95b3-6bd4e970fee3"
        },
        "target": {
          "id": "34e1718c-e9d4-4b20-a81d-30a677904bc2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.9874267578125,
              "dy": 43.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b304cd40-b0ae-4922-aabd-4ca706474f98",
        "z": 2074,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9"
        },
        "target": {
          "id": "34e1718c-e9d4-4b20-a81d-30a677904bc2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 16.928573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_UP [tick < TICK_MAX]"
              }
            },
            "position": {
              "distance": 0.3695777474474359,
              "offset": -14,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "eea4581c-f143-49c7-b06f-7b94d699fa1d",
        "z": 2074,
        "vertices": [
          {
            "x": -4479,
            "y": 1720
          }
        ],
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "34e1718c-e9d4-4b20-a81d-30a677904bc2"
        },
        "target": {
          "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.0142822265625,
              "dy": 37.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_ACCIONAR_PORTON_DOWN\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5713198092352041,
              "offset": -32.05614216376717,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d7da164d-c7f4-4745-ac74-c75841e53567",
        "z": 2074,
        "vertices": [
          {
            "x": -4644,
            "y": 1687.4299999999998
          },
          {
            "x": -4559,
            "y": 1633.5
          }
        ],
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -3281,
          "y": 714
        },
        "size": {
          "height": 596,
          "width": 1376
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "z": 2075,
        "embeds": [
          "63f97b77-1332-457c-889e-f3aa97ce4483",
          "035cd599-5cac-4d21-92e9-bbc2c5ee2a6b",
          "8b7ac10d-eb2b-495b-8c41-4e67b1371426",
          "9ad01e91-ee88-4b29-8aa5-f02c3b20a11d",
          "feab01ab-7710-4332-8846-a7f7be7f1a80",
          "16132039-3baa-4150-ba90-0aac466635a6",
          "a26c55aa-5a1f-4e00-9bb4-12bba55dce96",
          "8b1416be-8244-43d5-b9c3-62a54c2c0ce6",
          "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
          "63c4f0f2-a738-45ae-b6ac-c9cc5faac0eb",
          "1415c45a-a6de-4ef9-90e5-0fc82751a896",
          "c78a8f1e-f943-4e26-9059-716feeb98afe",
          "e9598112-1492-4033-bb38-e7d4e08da1a8"
        ],
        "attrs": {
          "priority": {
            "text": 4
          },
          "name": {
            "text": "Botón de Next"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2936,
          "y": 979.25
        },
        "size": {
          "height": 103.5,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8b1416be-8244-43d5-b9c3-62a54c2c0ce6",
        "z": 2076,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2556.4874954223633,
          "y": 838
        },
        "size": {
          "height": 98,
          "width": 144.02500915527344
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
        "z": 2077,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "embeds": [
          "abe3db25-b756-469d-ba2b-5557c64fa35d"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_FALLING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2207.987434387207,
          "y": 936
        },
        "size": {
          "height": 102,
          "width": 134
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "63c4f0f2-a738-45ae-b6ac-c9cc5faac0eb",
        "z": 2078,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_DOWN"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -3209,
          "y": 762
        },
        "size": {
          "width": 216,
          "height": 106
        },
        "angle": 0,
        "linkable": false,
        "id": "1415c45a-a6de-4ef9-90e5-0fc82751a896",
        "z": 2079,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {
          "label": {
            "text": "Aca sería el botón de next\nPaso de variable (de true a \nfalse) o aumento la misma\n",
            "annotations": [
              {
                "start": 0,
                "end": 82,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2575.9874954223633,
          "y": 1104.5
        },
        "size": {
          "height": 99,
          "width": 180
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c78a8f1e-f943-4e26-9059-716feeb98afe",
        "z": 2080,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "embeds": [
          "f4eb0708-df31-417c-a011-8ce1c9d5c619"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_INCREASING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -3160.012565612793,
          "y": 1016
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "e9598112-1492-4033-bb38-e7d4e08da1a8",
        "z": 2087,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "embeds": [
          "58f502a6-0b3c-4ec9-aaf0-1798639ea683"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -3160.012565612793,
          "y": 1031
        },
        "id": "58f502a6-0b3c-4ec9-aaf0-1798639ea683",
        "z": 2091,
        "parent": "e9598112-1492-4033-bb38-e7d4e08da1a8",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "c78a8f1e-f943-4e26-9059-716feeb98afe"
        },
        "target": {
          "id": "c78a8f1e-f943-4e26-9059-716feeb98afe",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 128,
              "dy": 90,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_UP\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.5189092747108797,
              "offset": 32,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f4eb0708-df31-417c-a011-8ce1c9d5c619",
        "z": 2092,
        "parent": "c78a8f1e-f943-4e26-9059-716feeb98afe",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c78a8f1e-f943-4e26-9059-716feeb98afe"
        },
        "target": {
          "id": "63c4f0f2-a738-45ae-b6ac-c9cc5faac0eb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 97.9874267578125,
              "dy": 87.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_DOWN"
              }
            },
            "position": {
              "distance": 0.3748633901591083,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9ad01e91-ee88-4b29-8aa5-f02c3b20a11d",
        "z": 2092,
        "vertices": [
          {
            "x": -2204,
            "y": 1190
          }
        ],
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "63c4f0f2-a738-45ae-b6ac-c9cc5faac0eb"
        },
        "target": {
          "id": "c78a8f1e-f943-4e26-9059-716feeb98afe",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 135.53036499023438,
              "dy": 49.428558349609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_UP\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5558920765050591,
              "offset": 34.0461685685204,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "035cd599-5cac-4d21-92e9-bbc2c5ee2a6b",
        "z": 2092,
        "vertices": [
          {
            "x": -2216,
            "y": 1154.43
          }
        ],
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49"
        },
        "target": {
          "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 34.48748779296875,
              "dy": 10,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_DOWN\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.4558741006741255,
              "offset": 35.53630065917969,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "abe3db25-b756-469d-ba2b-5557c64fa35d",
        "z": 2092,
        "vertices": [
          {
            "x": -2440,
            "y": 800
          },
          {
            "x": -2499.999969482422,
            "y": 800
          }
        ],
        "parent": "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49"
        },
        "target": {
          "id": "63c4f0f2-a738-45ae-b6ac-c9cc5faac0eb",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 73.9874267578125,
              "dy": 13.428573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_DOWN [tick == 0]\n/  raise EV_SYS_NEXT"
              }
            },
            "position": {
              "distance": 0.6723305193944689,
              "offset": -33.69798278808594,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "feab01ab-7710-4332-8846-a7f7be7f1a80",
        "z": 2092,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "e9598112-1492-4033-bb38-e7d4e08da1a8"
        },
        "target": {
          "id": "8b1416be-8244-43d5-b9c3-62a54c2c0ce6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.9874267578125,
              "dy": 43.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "63f97b77-1332-457c-889e-f3aa97ce4483",
        "z": 2092,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49"
        },
        "target": {
          "id": "8b1416be-8244-43d5-b9c3-62a54c2c0ce6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 16.928573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_UP [tick < TICK_MAX]"
              }
            },
            "position": {
              "distance": 0.4123720161279207,
              "offset": -17,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a26c55aa-5a1f-4e00-9bb4-12bba55dce96",
        "z": 2092,
        "vertices": [
          {
            "x": -2716,
            "y": 908
          }
        ],
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c78a8f1e-f943-4e26-9059-716feeb98afe"
        },
        "target": {
          "id": "8b1416be-8244-43d5-b9c3-62a54c2c0ce6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 58,
              "dy": 104.92857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_UP\n[tick == 0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8b7ac10d-eb2b-495b-8c41-4e67b1371426",
        "z": 2092,
        "vertices": [],
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8b1416be-8244-43d5-b9c3-62a54c2c0ce6"
        },
        "target": {
          "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.0142822265625,
              "dy": 37.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_NEXT_DOWN\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5713198092352041,
              "offset": -32.05614216376717,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "16132039-3baa-4150-ba90-0aac466635a6",
        "z": 2092,
        "vertices": [
          {
            "x": -2881,
            "y": 875.4299999999998
          }
        ],
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -3235,
          "y": 1457
        },
        "size": {
          "height": 596,
          "width": 1544
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "z": 2130,
        "embeds": [
          "bc8a52f5-7686-426b-92e3-6d388cb27389",
          "b64529de-222e-42be-93a0-09f96e936718",
          "6cae3c97-2913-49c7-b0b1-97f167206c02",
          "1a24be17-67c2-4e9a-8c8f-1bd3f112886b",
          "aad71bbc-83c4-431c-92d3-b9d649d54f42",
          "c4fcced0-b313-4aac-8394-20352aad199b",
          "8db174f4-de97-415e-9295-41c952cdcd40",
          "73775213-ae0b-4ab6-b053-e8aea5b2dd8b",
          "0f405037-a62d-4b53-ba6b-6518b4a0268c",
          "c8245176-fc61-4f97-ba16-e2849738b626",
          "03960b73-b993-419c-bb69-e92b750f60ef",
          "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
          "efd5879c-004c-4b04-9f64-ed3a8cf9e5cf",
          "8833c88b-c607-4740-b40e-c2214602ed79"
        ],
        "attrs": {
          "priority": {
            "text": 3
          },
          "name": {
            "text": "Botón de Auto Debajo"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2890,
          "y": 1722.25
        },
        "size": {
          "height": 60,
          "width": 163
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0f405037-a62d-4b53-ba6b-6518b4a0268c",
        "z": 2131,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2561.4562454223633,
          "y": 1581
        },
        "size": {
          "height": 83,
          "width": 195
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c8245176-fc61-4f97-ba16-e2849738b626",
        "z": 2132,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "embeds": [
          "7123b992-9377-43ed-8a6d-97b5f7d7b77c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_FALLING"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -3163,
          "y": 1505
        },
        "size": {
          "width": 290.7826232910156,
          "height": 104
        },
        "angle": 0,
        "linkable": false,
        "id": "03960b73-b993-419c-bb69-e92b750f60ef",
        "z": 2133,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "label": {
            "text": "Aca sería el boton para indicar que\nhay un auto debajo\nTENGO ENTENDIDO QUE USA 2 POR SEGURIDAD\nPOR SI FALLASE ALGUNO",
            "annotations": [
              {
                "start": 0,
                "end": 116,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2570.9874954223633,
          "y": 1862.5
        },
        "size": {
          "height": 84,
          "width": 221
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
        "z": 2134,
        "embeds": [
          "21f11671-884a-4adb-acd9-f6c883f740b7"
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_INCREASING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -3114.012565612793,
          "y": 1759
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "efd5879c-004c-4b04-9f64-ed3a8cf9e5cf",
        "z": 2135,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "embeds": [
          "be4ce345-6e0a-47e0-89bc-691149f09121"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1916.987434387207,
          "y": 1708.25
        },
        "size": {
          "height": 74,
          "width": 190
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8833c88b-c607-4740-b40e-c2214602ed79",
        "z": 2136,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_DOWN"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -3114.012565612793,
          "y": 1774
        },
        "id": "be4ce345-6e0a-47e0-89bc-691149f09121",
        "z": 2147,
        "parent": "efd5879c-004c-4b04-9f64-ed3a8cf9e5cf",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "8833c88b-c607-4740-b40e-c2214602ed79",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 93.9874267578125,
              "dy": 66.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 135.53036499023438,
              "dy": 49.428558349609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_UP\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5558920765050591,
              "offset": 34.0461685685204,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1a24be17-67c2-4e9a-8c8f-1bd3f112886b",
        "z": 2148,
        "vertices": [
          {
            "x": -1982,
            "y": 1911.9299999999998
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2"
        },
        "target": {
          "id": "8833c88b-c607-4740-b40e-c2214602ed79",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 176.9874267578125,
              "dy": 58.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_DOWN"
              }
            },
            "position": {
              "distance": 0.3748633901591083,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6cae3c97-2913-49c7-b0b1-97f167206c02",
        "z": 2148,
        "vertices": [
          {
            "x": -2158,
            "y": 1933
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 83.98748779296875,
              "dy": 80,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 131.98748779296875,
              "dy": 74,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_UP\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.5189092747108797,
              "offset": 32,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "21f11671-884a-4adb-acd9-f6c883f740b7",
        "z": 2148,
        "parent": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c8245176-fc61-4f97-ba16-e2849738b626",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 191.45623779296875,
              "dy": 67.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "8833c88b-c607-4740-b40e-c2214602ed79",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 47.9874267578125,
              "dy": 9.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_DOWN [tick == 0 && auto_debajo == true]\n/  auto_debajo = false;\nraise EV_SYS_AUTO_DEBAJO_OFF"
              }
            },
            "position": {
              "distance": 0.4698096286026906,
              "offset": 52,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "bc8a52f5-7686-426b-92e3-6d388cb27389",
        "z": 2148,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c8245176-fc61-4f97-ba16-e2849738b626"
        },
        "target": {
          "id": "8833c88b-c607-4740-b40e-c2214602ed79",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 173.9874267578125,
              "dy": 15.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_DOWN [tick == 0 && auto_debajo == false]\n/  auto_debajo = true;\n    raise EV_SYS_AUTO_DEBAJO_ON"
              }
            },
            "position": {
              "distance": 0.6312214069732361,
              "offset": -25.697998046875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b64529de-222e-42be-93a0-09f96e936718",
        "z": 2148,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c8245176-fc61-4f97-ba16-e2849738b626"
        },
        "target": {
          "id": "c8245176-fc61-4f97-ba16-e2849738b626",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 97.45623779296875,
              "dy": 4.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_DOWN\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.4558741006741255,
              "offset": 35.53630065917969,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "7123b992-9377-43ed-8a6d-97b5f7d7b77c",
        "z": 2148,
        "vertices": [
          {
            "x": -2394,
            "y": 1543
          },
          {
            "x": -2453.999969482422,
            "y": 1543
          }
        ],
        "parent": "c8245176-fc61-4f97-ba16-e2849738b626",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2"
        },
        "target": {
          "id": "0f405037-a62d-4b53-ba6b-6518b4a0268c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 61,
              "dy": 47.25,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_UP\n[tick == 0]"
              }
            },
            "position": {
              "distance": 0.5000000231502014,
              "offset": -29,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "aad71bbc-83c4-431c-92d3-b9d649d54f42",
        "z": 2148,
        "vertices": [],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "efd5879c-004c-4b04-9f64-ed3a8cf9e5cf"
        },
        "target": {
          "id": "0f405037-a62d-4b53-ba6b-6518b4a0268c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.9874267578125,
              "dy": 43.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c4fcced0-b313-4aac-8394-20352aad199b",
        "z": 2148,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c8245176-fc61-4f97-ba16-e2849738b626"
        },
        "target": {
          "id": "0f405037-a62d-4b53-ba6b-6518b4a0268c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 16.928573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_UP [tick < TICK_MAX]"
              }
            },
            "position": {
              "distance": 0.2925641296636264,
              "offset": -21.032453878951667,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "73775213-ae0b-4ab6-b053-e8aea5b2dd8b",
        "z": 2148,
        "vertices": [
          {
            "x": -2673,
            "y": 1655
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "0f405037-a62d-4b53-ba6b-6518b4a0268c"
        },
        "target": {
          "id": "c8245176-fc61-4f97-ba16-e2849738b626",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.0142822265625,
              "dy": 37.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_AUTO_DEBAJO_DOWN\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5713198092352041,
              "offset": -32.05614216376717,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8db174f4-de97-415e-9295-41c952cdcd40",
        "z": 2148,
        "vertices": [
          {
            "x": -2835,
            "y": 1618.4299999999998
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 530.4999389648438,
          "y": 392.5
        },
        "size": {
          "height": 344,
          "width": 964
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "z": 2633,
        "embeds": [
          "95891078-c067-43b7-9446-2b26d1b73894",
          "ea2d2f72-eadd-469b-95d9-78a8df670f11",
          "406ec432-1aa3-4a15-9357-d0806e340a79",
          "a2e8e544-6915-4a63-985f-3f807b7ded82",
          "f5a8bceb-51f2-4014-a09d-28457e8a3483",
          "896c652b-9a8d-4c34-8070-82460f955769",
          "d3a9fd20-e869-4f45-b5da-5b872457fb47"
        ],
        "attrs": {
          "priority": {
            "text": 11
          },
          "name": {
            "text": "LED PORTON NO COMPLETAMENTE CERRADO"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": 574.9998779296875,
          "y": 447.3125581741333
        },
        "size": {
          "width": 304.70538330078125,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "a2e8e544-6915-4a63-985f-3f807b7ded82",
        "z": 2634,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "attrs": {
          "label": {
            "text": "EL LED SE ENCIENDE SI EL PORTON NO ESTA\nCOMPLETAMENTE CERRADO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 629.9998779296875,
          "y": 577.6250553131104
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "f5a8bceb-51f2-4014-a09d-28457e8a3483",
        "z": 2635,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "embeds": [
          "17a3f59c-9ace-418e-bb5e-c87294fa11a2"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 775.4996948242188,
          "y": 555.6250610351562
        },
        "size": {
          "height": 61.74994468688965,
          "width": 163
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "896c652b-9a8d-4c34-8070-82460f955769",
        "z": 2636,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "attrs": {
          "name": {
            "text": "ST_LED_03_PRENDIDO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1289.4999389648438,
          "y": 550.5
        },
        "size": {
          "height": 68.20318603515625,
          "width": 151.234375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d3a9fd20-e869-4f45-b5da-5b872457fb47",
        "z": 2638,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "attrs": {
          "name": {
            "text": "ST_LED_03_APAGADO"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 629.9998779296875,
          "y": 592.6250553131104
        },
        "id": "17a3f59c-9ace-418e-bb5e-c87294fa11a2",
        "z": 2641,
        "parent": "f5a8bceb-51f2-4014-a09d-28457e8a3483",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "d3a9fd20-e869-4f45-b5da-5b872457fb47"
        },
        "target": {
          "id": "896c652b-9a8d-4c34-8070-82460f955769",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 154.000244140625,
              "dy": 49.87493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_COMPLETAMENTE_CERRADO_OFF"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ea2d2f72-eadd-469b-95d9-78a8df670f11",
        "z": 2642,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "896c652b-9a8d-4c34-8070-82460f955769"
        },
        "target": {
          "id": "d3a9fd20-e869-4f45-b5da-5b872457fb47",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 13,
              "dy": 31.6015625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_COMPLETAMENTE_CERRADO_ON"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "95891078-c067-43b7-9446-2b26d1b73894",
        "z": 2642,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f5a8bceb-51f2-4014-a09d-28457e8a3483"
        },
        "target": {
          "id": "896c652b-9a8d-4c34-8070-82460f955769",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25,
              "dy": 36.34906005859375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "406ec432-1aa3-4a15-9357-d0806e340a79",
        "z": 2642,
        "parent": "44ea16ee-e70a-4ded-82a5-2b22ec7684a0",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 532.79443359375,
          "y": -388
        },
        "size": {
          "height": 363,
          "width": 961.7055053710938
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "z": 2663,
        "embeds": [
          "b575d66b-ec40-4ea3-a4dc-c34b0195577e",
          "77e58e55-fe36-448c-8f7d-deadfc7f6240",
          "fb7f5c08-bea6-4044-b2bb-6c9c98c5be5b",
          "fb762d33-114f-4854-8cf5-3d2d0ebb60ea",
          "3726899d-78a3-4385-a27c-d411763e5096",
          "8b4f5660-5ccf-47ca-9f2e-2475d8ba78ab",
          "b29cc5f5-e6ac-48a0-a95c-8110880b8476"
        ],
        "attrs": {
          "priority": {
            "text": 9
          },
          "name": {
            "text": "SIRENA AUTO DEBAJO"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": 577.2943725585938,
          "y": -333.1874418258667
        },
        "size": {
          "width": 257,
          "height": 63.984256744384766
        },
        "angle": 0,
        "linkable": false,
        "id": "fb762d33-114f-4854-8cf5-3d2d0ebb60ea",
        "z": 2664,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "attrs": {
          "label": {
            "text": "LA SIRENA SE PRENDE SI SE PASO \nEL TIEMPO DE PERMANENCIA DEBAJO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 632.2943725585938,
          "y": -202.87494468688965
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "3726899d-78a3-4385-a27c-d411763e5096",
        "z": 2665,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "embeds": [
          "e61c9079-e502-45f6-8be1-d1650e99162f"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 632.2943725585938,
          "y": -187.87494468688965
        },
        "id": "e61c9079-e502-45f6-8be1-d1650e99162f",
        "z": 2671,
        "parent": "3726899d-78a3-4385-a27c-d411763e5096",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 532.79443359375,
          "y": -965.625
        },
        "size": {
          "height": 461,
          "width": 1184
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "z": 2673,
        "embeds": [
          "e01008ee-801a-4aa6-84dd-0a31caff0827",
          "b01012c3-834b-4885-95a0-5bc0117443cd",
          "fb9efb85-4453-44e9-905f-fe79973a6671",
          "c657ed78-93c1-4e5c-864f-1f8e05fe1da5",
          "9e0f45d0-c888-4b43-b99a-d282583a722a",
          "d865b0ca-1027-4950-9fae-64bb8ad4fc43",
          "c0c98b4e-290c-43fa-b357-6e4b3bfff33d"
        ],
        "attrs": {
          "priority": {
            "text": 8
          },
          "name": {
            "text": "LED CERRAR PORTON"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": 604.2943725585938,
          "y": -871.8124418258667
        },
        "size": {
          "width": 182.84375,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "c657ed78-93c1-4e5c-864f-1f8e05fe1da5",
        "z": 2674,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "attrs": {
          "label": {
            "text": "EL LED TITILA CUANDO SE \nESTA CERRANDO EL PORTON\nSINO, ESTA APAGADO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 659.2943725585938,
          "y": -741.4999446868896
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "9e0f45d0-c888-4b43-b99a-d282583a722a",
        "z": 2675,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "embeds": [
          "d74a9001-0af8-4374-b999-7207fb7cc885"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1213.5888671875,
          "y": -883.7499942779541
        },
        "size": {
          "height": 349,
          "width": 443
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d865b0ca-1027-4950-9fae-64bb8ad4fc43",
        "z": 2676,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "embeds": [
          "b11d43e9-a387-498b-85c9-953f36d5f05a"
        ],
        "attrs": {
          "name": {
            "text": "ST_LED_01_TITILANDO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 804.794189453125,
          "y": -763.4999389648438
        },
        "size": {
          "height": 61.74994468688965,
          "width": 163
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c0c98b4e-290c-43fa-b357-6e4b3bfff33d",
        "z": 2677,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "attrs": {
          "name": {
            "text": "ST_LED_01_APAGADO"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 659.2943725585938,
          "y": -726.4999446868896
        },
        "id": "d74a9001-0af8-4374-b999-7207fb7cc885",
        "z": 2681,
        "parent": "9e0f45d0-c888-4b43-b99a-d282583a722a",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 1214.5888671875,
          "y": -861.9531192779541
        },
        "size": {
          "height": 326.203125,
          "width": 441
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "z": 2682,
        "parent": "d865b0ca-1027-4950-9fae-64bb8ad4fc43",
        "embeds": [
          "f3305a73-3e4b-4b3a-ab70-7856013214da",
          "a21bc422-fe9a-4070-aff0-e3c341d14b57",
          "9d2a89fe-973b-4674-94cf-ae25470bf163",
          "3ac539a7-abcd-4826-822a-174845af30b9",
          "98ee0fea-e5ee-453e-a45a-430e771bba53",
          "ce27ecdb-78b2-44b8-86dd-1196f297204f"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1332.5888671875,
          "y": -807.8281860351562
        },
        "size": {
          "height": 68.20318603515625,
          "width": 150
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3ac539a7-abcd-4826-822a-174845af30b9",
        "z": 2683,
        "parent": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "attrs": {
          "name": {
            "text": "ST_LED_01_APAGADO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1333.5888671875,
          "y": -692.3281860351562
        },
        "size": {
          "height": 68,
          "width": 148
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "98ee0fea-e5ee-453e-a45a-430e771bba53",
        "z": 2684,
        "parent": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "attrs": {
          "name": {
            "text": "ST_LED_01_PRENDIDO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 1269.5888671875,
          "y": -781.2265930175781
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "ce27ecdb-78b2-44b8-86dd-1196f297204f",
        "z": 2685,
        "parent": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "embeds": [
          "9176b623-f5fe-4e7d-be39-632a35b57141"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 1269.5888671875,
          "y": -766.2265930175781
        },
        "id": "9176b623-f5fe-4e7d-be39-632a35b57141",
        "z": 2689,
        "parent": "ce27ecdb-78b2-44b8-86dd-1196f297204f",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "ce27ecdb-78b2-44b8-86dd-1196f297204f"
        },
        "target": {
          "id": "3ac539a7-abcd-4826-822a-174845af30b9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 35.000244140625,
              "dy": 42.9744873046875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9d2a89fe-973b-4674-94cf-ae25470bf163",
        "z": 2690,
        "parent": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "98ee0fea-e5ee-453e-a45a-430e771bba53"
        },
        "target": {
          "id": "3ac539a7-abcd-4826-822a-174845af30b9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 46.20556640625,
              "dy": 62.974609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 3s"
              }
            },
            "position": {
              "distance": 0.4788533640502768,
              "offset": -46,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f3305a73-3e4b-4b3a-ab70-7856013214da",
        "z": 2690,
        "vertices": [],
        "parent": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3ac539a7-abcd-4826-822a-174845af30b9"
        },
        "target": {
          "id": "98ee0fea-e5ee-453e-a45a-430e771bba53",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 103.20556640625,
              "dy": 17.474609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "     after 3s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a21bc422-fe9a-4070-aff0-e3c341d14b57",
        "z": 2690,
        "parent": "b11d43e9-a387-498b-85c9-953f36d5f05a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c0c98b4e-290c-43fa-b357-6e4b3bfff33d"
        },
        "target": {
          "x": 1750,
          "y": -787,
          "id": "d865b0ca-1027-4950-9fae-64bb8ad4fc43",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.000244140625,
              "dy": 143.99993896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_CERRANDO_ON"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fb9efb85-4453-44e9-905f-fe79973a6671",
        "z": 2690,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d865b0ca-1027-4950-9fae-64bb8ad4fc43"
        },
        "target": {
          "id": "c0c98b4e-290c-43fa-b357-6e4b3bfff33d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 149.000244140625,
              "dy": 39.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_CERRANDO_OFF"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e01008ee-801a-4aa6-84dd-0a31caff0827",
        "z": 2690,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9e0f45d0-c888-4b43-b99a-d282583a722a"
        },
        "target": {
          "id": "c0c98b4e-290c-43fa-b357-6e4b3bfff33d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25,
              "dy": 36.34906005859375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b01012c3-834b-4885-95a0-5bc0117443cd",
        "z": 2690,
        "parent": "4c654546-fbe6-40fd-9e51-2e0abdadfa85",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 530.4999389648438,
          "y": -9.375
        },
        "size": {
          "height": 368.75,
          "width": 990
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "z": 2691,
        "embeds": [
          "fc354088-62ab-4bb0-bfc5-d21b79b0a659",
          "0c729f5f-04b7-4650-8a11-81072ce29445",
          "d7ea778f-67c0-42f2-93e6-465cbf9687e1",
          "e259176c-8368-473d-9b2b-f80d0dedb522",
          "9501cc61-9375-4b06-abcc-c76655830a05",
          "166eda55-9fd8-4c39-877e-179d9ae36edc",
          "778370f4-fae9-4781-8192-01683e07b32d"
        ],
        "attrs": {
          "priority": {
            "text": 10
          },
          "name": {
            "text": "LED PORTON COMPLETAMENTE CERRADO"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": 574.9998779296875,
          "y": 45.4375581741333
        },
        "size": {
          "width": 270.041015625,
          "height": 63.984256744384766
        },
        "angle": 0,
        "linkable": false,
        "id": "e259176c-8368-473d-9b2b-f80d0dedb522",
        "z": 2692,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "attrs": {
          "label": {
            "text": "EL LED SE ENCIENDE SI EL PORTON ESTA\nCOMPLETAMENTE CERRADO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 629.9998779296875,
          "y": 175.75005531311035
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "9501cc61-9375-4b06-abcc-c76655830a05",
        "z": 2693,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "embeds": [
          "003e01ac-4638-46cf-9ded-5ea305a96300"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 775.4996948242188,
          "y": 153.75006103515625
        },
        "size": {
          "height": 61.74994468688965,
          "width": 163
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "166eda55-9fd8-4c39-877e-179d9ae36edc",
        "z": 2694,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "attrs": {
          "name": {
            "text": "ST_LED_02_PRENDIDO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1314.4999389648438,
          "y": 148.42181396484375
        },
        "size": {
          "height": 68.20318603515625,
          "width": 151.234375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "778370f4-fae9-4781-8192-01683e07b32d",
        "z": 2696,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "attrs": {
          "name": {
            "text": "ST_LED_02_APAGADO"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 629.9998779296875,
          "y": 190.75005531311035
        },
        "id": "003e01ac-4638-46cf-9ded-5ea305a96300",
        "z": 2699,
        "parent": "9501cc61-9375-4b06-abcc-c76655830a05",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "778370f4-fae9-4781-8192-01683e07b32d"
        },
        "target": {
          "id": "166eda55-9fd8-4c39-877e-179d9ae36edc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 154.000244140625,
              "dy": 49.87493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_COMPLETAMENTE_CERRADO_ON"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0c729f5f-04b7-4650-8a11-81072ce29445",
        "z": 2700,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "166eda55-9fd8-4c39-877e-179d9ae36edc"
        },
        "target": {
          "id": "778370f4-fae9-4781-8192-01683e07b32d",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 13,
              "dy": 31.6015625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_COMPLETAMENTE_CERRADO_OFF"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fc354088-62ab-4bb0-bfc5-d21b79b0a659",
        "z": 2700,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9501cc61-9375-4b06-abcc-c76655830a05"
        },
        "target": {
          "id": "166eda55-9fd8-4c39-877e-179d9ae36edc",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25,
              "dy": 36.34906005859375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d7ea778f-67c0-42f2-93e6-465cbf9687e1",
        "z": 2700,
        "parent": "28a18980-6c7d-4d75-b19c-e50f5935ed68",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 541.41162109375,
          "y": -1542.9061889648438
        },
        "size": {
          "height": 461,
          "width": 1184
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "da051513-724e-4d69-8ae4-ede859d4112b",
        "z": 2701,
        "embeds": [
          "31bc907e-1c0b-49cd-89e6-a2bb38aa6884",
          "dcc2975e-3752-4fc7-ab95-4578e00bd0df",
          "10386982-33a5-408f-9930-dbbe2944a137",
          "cb4e7ed2-116b-4f43-afef-efd2ecb24f6b",
          "81f6c100-9b82-4c29-b381-5fc6047efa66",
          "cc522a35-6327-412d-b03c-851552540dd0",
          "1015bb3c-31ea-4ec7-a1c8-26fae04d4454"
        ],
        "attrs": {
          "priority": {
            "text": 7
          },
          "name": {
            "text": "LED ABRIR PORTON"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": 612.9115600585938,
          "y": -1449.0936307907104
        },
        "size": {
          "width": 182.828125,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "cb4e7ed2-116b-4f43-afef-efd2ecb24f6b",
        "z": 2702,
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {
          "label": {
            "text": "EL LED TITILA CUANDO SE \nESTA ABRIENDO EL PORTON\nSINO, ESTA APAGADO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 667.9115600585938,
          "y": -1318.7811336517334
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "81f6c100-9b82-4c29-b381-5fc6047efa66",
        "z": 2703,
        "embeds": [
          "e0507795-2bba-4071-9034-f26e16a1927b"
        ],
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1222.2060546875,
          "y": -1461.0311832427979
        },
        "size": {
          "height": 349,
          "width": 443
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "cc522a35-6327-412d-b03c-851552540dd0",
        "z": 2704,
        "embeds": [
          "e19cfa5b-4a51-4a6d-ad46-eac077cd0336"
        ],
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {
          "name": {
            "text": "ST_LED_00_TITILANDO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 813.411376953125,
          "y": -1340.7811279296875
        },
        "size": {
          "height": 61.74994468688965,
          "width": 163
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1015bb3c-31ea-4ec7-a1c8-26fae04d4454",
        "z": 2705,
        "embeds": [],
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {
          "name": {
            "text": "ST_LED_00_APAGADO"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 667.9115600585938,
          "y": -1303.7811336517334
        },
        "id": "e0507795-2bba-4071-9034-f26e16a1927b",
        "z": 2709,
        "parent": "81f6c100-9b82-4c29-b381-5fc6047efa66",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 1223.2060546875,
          "y": -1439.2343082427979
        },
        "size": {
          "height": 326.203125,
          "width": 441
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "z": 2710,
        "parent": "cc522a35-6327-412d-b03c-851552540dd0",
        "embeds": [
          "edf6bf4c-2b31-40d7-8b52-0c4777064e82",
          "e8457b17-0ff1-40db-b8da-016da71cf9c1",
          "74846327-4b99-40c1-95f7-04ee87a892f9",
          "b1ff8608-2a30-42dd-90a8-66db6ece5022",
          "2a7c2e02-8928-45dd-be73-c5fd16a57dc8",
          "fc8e65bd-311a-409b-8748-3aeb7cf5ae05"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1341.2060546875,
          "y": -1385.109375
        },
        "size": {
          "height": 68.20318603515625,
          "width": 150
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b1ff8608-2a30-42dd-90a8-66db6ece5022",
        "z": 2711,
        "parent": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "attrs": {
          "name": {
            "text": "ST_LED_00_APAGADO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1342.2060546875,
          "y": -1269.609375
        },
        "size": {
          "height": 68,
          "width": 148
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2a7c2e02-8928-45dd-be73-c5fd16a57dc8",
        "z": 2712,
        "embeds": [],
        "parent": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "attrs": {
          "name": {
            "text": "ST_LED_00_PRENDIDO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 1278.2060546875,
          "y": -1358.5077819824219
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "fc8e65bd-311a-409b-8748-3aeb7cf5ae05",
        "z": 2713,
        "embeds": [
          "22f46f1a-5468-4144-b66b-3f46cd46d509"
        ],
        "parent": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 1278.2060546875,
          "y": -1343.5077819824219
        },
        "id": "22f46f1a-5468-4144-b66b-3f46cd46d509",
        "z": 2717,
        "parent": "fc8e65bd-311a-409b-8748-3aeb7cf5ae05",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "2a7c2e02-8928-45dd-be73-c5fd16a57dc8"
        },
        "target": {
          "id": "b1ff8608-2a30-42dd-90a8-66db6ece5022",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 46.20556640625,
              "dy": 62.974609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 3s"
              }
            },
            "position": {
              "distance": 0.4788533640502768,
              "offset": -46,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "edf6bf4c-2b31-40d7-8b52-0c4777064e82",
        "z": 2718,
        "parent": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "fc8e65bd-311a-409b-8748-3aeb7cf5ae05"
        },
        "target": {
          "id": "b1ff8608-2a30-42dd-90a8-66db6ece5022",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 35.000244140625,
              "dy": 42.9744873046875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "74846327-4b99-40c1-95f7-04ee87a892f9",
        "z": 2718,
        "parent": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b1ff8608-2a30-42dd-90a8-66db6ece5022"
        },
        "target": {
          "id": "2a7c2e02-8928-45dd-be73-c5fd16a57dc8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 103.20556640625,
              "dy": 17.474609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "     after 3s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e8457b17-0ff1-40db-b8da-016da71cf9c1",
        "z": 2718,
        "parent": "e19cfa5b-4a51-4a6d-ad46-eac077cd0336",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "1015bb3c-31ea-4ec7-a1c8-26fae04d4454"
        },
        "target": {
          "x": 1750,
          "y": -787,
          "id": "cc522a35-6327-412d-b03c-851552540dd0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20.000244140625,
              "dy": 143.99993896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_ABRIENDO_ON"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "10386982-33a5-408f-9930-dbbe2944a137",
        "z": 2718,
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "cc522a35-6327-412d-b03c-851552540dd0"
        },
        "target": {
          "id": "1015bb3c-31ea-4ec7-a1c8-26fae04d4454",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 149.000244140625,
              "dy": 39.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_ABRIENDO_OFF"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "31bc907e-1c0b-49cd-89e6-a2bb38aa6884",
        "z": 2718,
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "81f6c100-9b82-4c29-b381-5fc6047efa66"
        },
        "target": {
          "id": "1015bb3c-31ea-4ec7-a1c8-26fae04d4454",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25,
              "dy": 36.34906005859375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "dcc2975e-3752-4fc7-ab95-4578e00bd0df",
        "z": 2718,
        "parent": "da051513-724e-4d69-8ae4-ede859d4112b",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1034.5888671875,
          "y": -269.20318508148193
        },
        "size": {
          "height": 176,
          "width": 419
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8b4f5660-5ccf-47ca-9f2e-2475d8ba78ab",
        "z": 2738,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "embeds": [
          "5fad1468-8607-4269-b955-d61a958e298c"
        ],
        "attrs": {
          "name": {
            "text": "ST_AUTO_DEBAJO_ON"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": 1035.5888671875,
          "y": -247.40631008148193
        },
        "size": {
          "height": 153.203125,
          "width": 417
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "5fad1468-8607-4269-b955-d61a958e298c",
        "z": 2743,
        "parent": "8b4f5660-5ccf-47ca-9f2e-2475d8ba78ab",
        "embeds": [
          "d3a26164-24fd-4c81-8ca2-a7c067cc5231",
          "247abac2-ac54-46d0-b43b-617baf655aad",
          "cf28013d-ed3f-440d-b1b8-afff7acff068",
          "a9851aa5-cc5c-49f0-807d-2f16b8d01bef",
          "fc4edb7d-57d8-4a49-8966-78ede8dc49fa"
        ],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 698.794189453125,
          "y": -226.24991703033447
        },
        "size": {
          "height": 61.74994468688965,
          "width": 163
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b29cc5f5-e6ac-48a0-a95c-8110880b8476",
        "z": 2745,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "attrs": {
          "name": {
            "text": "ST_AUTO_DEBAJO_OFF"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "3726899d-78a3-4385-a27c-d411763e5096"
        },
        "target": {
          "id": "b29cc5f5-e6ac-48a0-a95c-8110880b8476",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 25,
              "dy": 36.34906005859375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "77e58e55-fe36-448c-8f7d-deadfc7f6240",
        "z": 2746,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8b4f5660-5ccf-47ca-9f2e-2475d8ba78ab"
        },
        "target": {
          "id": "b29cc5f5-e6ac-48a0-a95c-8110880b8476",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 154.000244140625,
              "dy": 49.87493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_AUTO_DEBAJO_OFF"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fb7f5c08-bea6-4044-b2bb-6c9c98c5be5b",
        "z": 2746,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b29cc5f5-e6ac-48a0-a95c-8110880b8476",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 158.205810546875,
              "dy": 14.249923706054688,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "8b4f5660-5ccf-47ca-9f2e-2475d8ba78ab",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0.20556640625,
              "dy": 57.20318603515625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_AUTO_DEBAJO_ON"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b575d66b-ec40-4ea3-a4dc-c34b0195577e",
        "z": 2746,
        "parent": "2ed48e39-a543-4301-9e73-6cf0ae7fa0e3",
        "vertices": [],
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1075.80224609375,
          "y": -202.87494468688965
        },
        "size": {
          "height": 60,
          "width": 115.21875
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "cf28013d-ed3f-440d-b1b8-afff7acff068",
        "z": 2809,
        "parent": "5fad1468-8607-4269-b955-d61a958e298c",
        "attrs": {
          "name": {
            "text": "ST_CHICHARRA_OFF"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1332.7030639648438,
          "y": -202.87494468688965
        },
        "size": {
          "height": 60,
          "width": 108.03125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "a9851aa5-cc5c-49f0-807d-2f16b8d01bef",
        "z": 2811,
        "parent": "5fad1468-8607-4269-b955-d61a958e298c",
        "attrs": {
          "name": {
            "text": "ST_CHICHARRA_ON"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "cf28013d-ed3f-440d-b1b8-afff7acff068"
        },
        "target": {
          "id": "a9851aa5-cc5c-49f0-807d-2f16b8d01bef",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": -0.0899658203125,
              "dy": 45.3836669921875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after tmpo_debajo s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "247abac2-ac54-46d0-b43b-617baf655aad",
        "z": 2812,
        "parent": "5fad1468-8607-4269-b955-d61a958e298c",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": 1075.80224609375,
          "y": -226.24991703033447
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "fc4edb7d-57d8-4a49-8966-78ede8dc49fa",
        "z": 2813,
        "embeds": [
          "c9e065aa-f186-4246-8d5f-49a119e7ef0f"
        ],
        "parent": "5fad1468-8607-4269-b955-d61a958e298c",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 1075.80224609375,
          "y": -211.24991703033447
        },
        "id": "c9e065aa-f186-4246-8d5f-49a119e7ef0f",
        "z": 2814,
        "parent": "fc4edb7d-57d8-4a49-8966-78ede8dc49fa",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "fc4edb7d-57d8-4a49-8966-78ede8dc49fa"
        },
        "target": {
          "id": "cf28013d-ed3f-440d-b1b8-afff7acff068",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.9517822265625,
              "dy": 38.3836669921875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d3a26164-24fd-4c81-8ca2-a7c067cc5231",
        "z": 2815,
        "parent": "5fad1468-8607-4269-b955-d61a958e298c",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -1531,
          "y": 756
        },
        "size": {
          "height": 596,
          "width": 1376
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "z": 2900,
        "embeds": [
          "fad4fc9f-47e6-4eee-9f8c-3db46d9b91d1",
          "1c91c1ff-ca06-49e5-a6a8-582b79f8e791",
          "00d12154-8546-4bcc-825b-ca969f0456ab",
          "e299c5bb-e0f2-4e0a-b77b-75cbca327b90",
          "227f936e-02c3-40c6-9953-092de844fe0e",
          "1ff76e16-53ff-4baa-9189-a79cfac73451",
          "672b1153-ceeb-4a5d-ae29-73c0293f5371",
          "ae83794e-8ee9-48ed-8530-7a5170e3dc49",
          "d66797fd-fa14-48d4-80a7-19fd07503833",
          "b77f1e03-7075-4857-9b7a-b9b39e8eef6c",
          "f17134fb-bb13-4a26-ab08-bbb244ac6875",
          "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
          "ce73b553-5d7a-4f43-8cd2-9d063d441224"
        ],
        "attrs": {
          "priority": {
            "text": 2
          },
          "name": {
            "text": "Botón de Menú"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1186,
          "y": 1021.25
        },
        "size": {
          "height": 103.5,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "ae83794e-8ee9-48ed-8530-7a5170e3dc49",
        "z": 2901,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -806.4874954223633,
          "y": 880
        },
        "size": {
          "height": 98,
          "width": 141
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d66797fd-fa14-48d4-80a7-19fd07503833",
        "z": 2902,
        "embeds": [
          "0614dcfe-44e1-472f-942d-1cc72002b89b"
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_FALLING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -457.98743438720703,
          "y": 978
        },
        "size": {
          "height": 102,
          "width": 134
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b77f1e03-7075-4857-9b7a-b9b39e8eef6c",
        "z": 2903,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_DOWN"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -1459,
          "y": 804
        },
        "size": {
          "width": 216,
          "height": 106
        },
        "angle": 0,
        "linkable": false,
        "id": "f17134fb-bb13-4a26-ab08-bbb244ac6875",
        "z": 2904,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "label": {
            "text": "Aca sería el botón de menú\nPaso de Main a Menú #1",
            "annotations": [
              {
                "start": 0,
                "end": 49,
                "attrs": {
                  "fill": "#333333",
                  "font-size": 12,
                  "font-weight": "normal",
                  "text-decoration": "none",
                  "font-style": "normal",
                  "font-family": "'Roboto Mono', monospace"
                }
              }
            ]
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -825.9874954223633,
          "y": 1146.5
        },
        "size": {
          "height": 99,
          "width": 180
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
        "z": 2905,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "embeds": [
          "5831361c-6151-4af6-bce1-3c295d0e6068"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_INCREASING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -1410.012565612793,
          "y": 1058
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "ce73b553-5d7a-4f43-8cd2-9d063d441224",
        "z": 2906,
        "embeds": [
          "dbd2ba2f-3dd0-43c8-a034-73b2d37b43fa"
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -1410.012565612793,
          "y": 1073
        },
        "id": "dbd2ba2f-3dd0-43c8-a034-73b2d37b43fa",
        "z": 2916,
        "parent": "ce73b553-5d7a-4f43-8cd2-9d063d441224",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f"
        },
        "target": {
          "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 128,
              "dy": 90,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_UP\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.5189092747108797,
              "offset": 32,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5831361c-6151-4af6-bce1-3c295d0e6068",
        "z": 2917,
        "parent": "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f"
        },
        "target": {
          "id": "b77f1e03-7075-4857-9b7a-b9b39e8eef6c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 97.9874267578125,
              "dy": 87.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_DOWN"
              }
            },
            "position": {
              "distance": 0.3748633901591083,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e299c5bb-e0f2-4e0a-b77b-75cbca327b90",
        "z": 2917,
        "vertices": [
          {
            "x": -454,
            "y": 1232
          }
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "b77f1e03-7075-4857-9b7a-b9b39e8eef6c"
        },
        "target": {
          "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 135.53036499023438,
              "dy": 49.428558349609375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_UP\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5558920765050591,
              "offset": 34.0461685685204,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1c91c1ff-ca06-49e5-a6a8-582b79f8e791",
        "z": 2917,
        "vertices": [
          {
            "x": -466,
            "y": 1196.43
          }
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d66797fd-fa14-48d4-80a7-19fd07503833"
        },
        "target": {
          "id": "b77f1e03-7075-4857-9b7a-b9b39e8eef6c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 73.9874267578125,
              "dy": 13.428573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_DOWN [tick == 0]\n/  raise EV_SYS_MENU"
              }
            },
            "position": {
              "distance": 0.6723305193944689,
              "offset": -33.69798278808594,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "227f936e-02c3-40c6-9953-092de844fe0e",
        "z": 2917,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d66797fd-fa14-48d4-80a7-19fd07503833"
        },
        "target": {
          "id": "d66797fd-fa14-48d4-80a7-19fd07503833",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 34.48748779296875,
              "dy": 10,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_DOWN\n[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.4558741006741255,
              "offset": 35.53630065917969,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "0614dcfe-44e1-472f-942d-1cc72002b89b",
        "z": 2917,
        "vertices": [
          {
            "x": -690,
            "y": 842
          },
          {
            "x": -749.9999694824219,
            "y": 842
          }
        ],
        "parent": "d66797fd-fa14-48d4-80a7-19fd07503833",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "d66797fd-fa14-48d4-80a7-19fd07503833"
        },
        "target": {
          "id": "ae83794e-8ee9-48ed-8530-7a5170e3dc49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 16.928573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_UP [tick < TICK_MAX]"
              }
            },
            "position": {
              "distance": 0.4123720161279207,
              "offset": -17,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "672b1153-ceeb-4a5d-ae29-73c0293f5371",
        "z": 2917,
        "vertices": [
          {
            "x": -966,
            "y": 950
          }
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f"
        },
        "target": {
          "id": "ae83794e-8ee9-48ed-8530-7a5170e3dc49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 58,
              "dy": 104.92857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_UP\n[tick == 0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "00d12154-8546-4bcc-825b-ca969f0456ab",
        "z": 2917,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "vertices": [
          {
            "x": -989,
            "y": 1196
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ce73b553-5d7a-4f43-8cd2-9d063d441224"
        },
        "target": {
          "id": "ae83794e-8ee9-48ed-8530-7a5170e3dc49",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.9874267578125,
              "dy": 43.75,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "fad4fc9f-47e6-4eee-9f8c-3db46d9b91d1",
        "z": 2917,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "ae83794e-8ee9-48ed-8530-7a5170e3dc49"
        },
        "target": {
          "id": "d66797fd-fa14-48d4-80a7-19fd07503833",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 31.0142822265625,
              "dy": 37.42857360839844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_MENU_DOWN\n/\ntick = TICK_MAX"
              }
            },
            "position": {
              "distance": 0.5713198092352041,
              "offset": -32.05614216376717,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1ff76e16-53ff-4baa-9189-a79cfac73451",
        "z": 2917,
        "vertices": [
          {
            "x": -1131,
            "y": 917.4299999999998
          }
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -5100,
          "y": -1675
        },
        "size": {
          "height": 1552,
          "width": 4712
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "z": 2981,
        "embeds": [
          "2bf14f02-a9c0-4d36-a32b-5db321c21f52",
          "c7fdcb9a-beaa-4e29-8cef-5826bda8880d",
          "3bccd32c-58e1-4bb5-9024-dc4c78648002",
          "35e6b580-81b1-4727-89bf-428d96d70066",
          "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
          "8f4c816a-29cd-42dc-9c60-2287f7a616ef",
          "82887126-7e2f-44d3-82f7-afb9063fef2f"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "interactive_menu"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4787,
          "y": -1377.875005722046
        },
        "size": {
          "height": 1100.671880722046,
          "width": 1612
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
        "z": 2982,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "embeds": [
          "e667c0e5-ce25-439a-941c-d8f8a1136c74"
        ],
        "attrs": {
          "name": {
            "text": "ST_MODO_NORMAL"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2503,
          "y": -1338
        },
        "size": {
          "height": 1041.124994277954,
          "width": 1674
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8f4c816a-29cd-42dc-9c60-2287f7a616ef",
        "z": 2983,
        "embeds": [
          "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d"
        ],
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "attrs": {
          "name": {
            "text": "ST_MODO_SETUP"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -4641.986110687256,
          "y": -1610
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "82887126-7e2f-44d3-82f7-afb9063fef2f",
        "z": 2984,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "embeds": [
          "d28b13b8-9045-4a23-875b-386fc7aa4dfa"
        ],
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -4786,
          "y": -1356.078130722046
        },
        "size": {
          "height": 1077.875005722046,
          "width": 1610
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "z": 2988,
        "embeds": [
          "44560611-2d0c-4225-8f86-4d7742ca29d7",
          "bd909b94-eb44-4c25-9039-d3c580c0952c",
          "2eb8fade-ba37-4532-a821-a634a4ec460f",
          "d596b3d8-70f7-440d-877f-1645e91d68b7",
          "02db73d2-8a67-4681-afc1-2e177e1528b7",
          "2b30eb57-e2c2-4f46-9520-9aaca0dd303b",
          "aea3a25d-26c7-43b5-b160-8ae61e52e1ec",
          "d3446726-0fc2-4d88-829b-f06314aa921d",
          "41e86145-d89d-4e9e-b59f-ddfd14b4ea24",
          "1ca7ed51-923f-4dcf-a35a-55bd6713330c",
          "3485f5fc-ef93-45de-9160-ee895b72455b",
          "d26adc4a-a530-4f75-a9ac-44e7f85ff76c",
          "8a66df1d-1c33-4135-bb11-634a2edc20b6",
          "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "6359ab2c-34c0-4118-bc52-054eabedc8a6",
          "5088e524-977a-43a6-ab4d-1cfa83ed41e0",
          "f7315f39-6fc6-4ae4-a120-cc70502967ad",
          "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
          "bfcaec29-6c86-413c-bf36-d477c7e766af"
        ],
        "parent": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -2502,
          "y": -1316.203125
        },
        "size": {
          "height": 1018.3281192779541,
          "width": 1672
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "z": 2989,
        "embeds": [
          "4bdf86dc-2012-437f-90fa-8b0047a8cd21",
          "e8bdce38-ea9f-4f26-a5dc-ecce46407552",
          "5eb87323-b9e5-4b62-8e8c-a4eae2af4687",
          "3ea82168-f16d-4d13-9dd6-31e551afb05a",
          "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
          "a217add9-69cb-4a16-a4f8-548ec34fe767",
          "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "6ace7a9c-3b4a-4e37-b7a6-44830df0b005"
        ],
        "parent": "8f4c816a-29cd-42dc-9c60-2287f7a616ef",
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -4641.986110687256,
          "y": -1595
        },
        "id": "d28b13b8-9045-4a23-875b-386fc7aa4dfa",
        "z": 2990,
        "parent": "82887126-7e2f-44d3-82f7-afb9063fef2f",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4082.974868774414,
          "y": -1030
        },
        "size": {
          "height": 131.59375,
          "width": 151.234375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
        "z": 2991,
        "embeds": [
          "980fec10-1018-48cd-a059-e45c49f92453"
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_ABRIENDO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4123.857681274414,
          "y": -569.3750057220459
        },
        "size": {
          "height": 132.59375,
          "width": 180
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
        "z": 2992,
        "embeds": [
          "b029b3c9-a88b-4fac-871a-d422e45334ee"
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_CERRANDO"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -3771.974868774414,
          "y": -1272
        },
        "size": {
          "width": 333,
          "height": 104
        },
        "angle": 0,
        "linkable": false,
        "id": "6359ab2c-34c0-4118-bc52-054eabedc8a6",
        "z": 2993,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "label": {
            "text": "SI NO ES CON EL TICK SE PUEDE HACER CON\n(AFTER X SECONDS)\nLA IDEA ES QUE SI NO SE LLEGA A ABRIR Y TOCO\nDE NUEVO EL BOTON, SE FRENA"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -4747.012565612793,
          "y": -962.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "5088e524-977a-43a6-ab4d-1cfa83ed41e0",
        "z": 2994,
        "embeds": [
          "ae0cf90e-407a-43fa-a1f4-7aa39a37f6cc"
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4683,
          "y": -889.7967596054077
        },
        "size": {
          "height": 133.5,
          "width": 157
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f7315f39-6fc6-4ae4-a120-cc70502967ad",
        "z": 2995,
        "embeds": [],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_CERRADO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -3559.974868774414,
          "y": -995.4218149185181
        },
        "size": {
          "height": 102,
          "width": 134
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
        "z": 2996,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_ABIERTO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4070.857681274414,
          "y": -825.125
        },
        "size": {
          "height": 103.5,
          "width": 127
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "bfcaec29-6c86-413c-bf36-d477c7e766af",
        "z": 2997,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_FRENADO"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -2005,
          "y": -634.5
        },
        "size": {
          "height": 130,
          "width": 143.02777862548828
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
        "z": 3010,
        "embeds": [
          "32b6c883-ba5c-4d2d-857c-448b9bf461f1",
          "6ded51d0-302d-4cb3-8e65-03e64d70e048"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "text": "ST_MENU_ESPERA"
          },
          "specification": {
            "text": "\n"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1332,
          "y": -680
        },
        "size": {
          "height": 199.3333282470703,
          "width": 147
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
        "z": 3011,
        "embeds": [
          "ab845f2a-cc6e-451d-9092-c0a38baf1fe7",
          "e7bca249-4404-404c-a505-a07725ea8c03"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "text": "ST_MENU_DEBAJO"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -1561.6944580078125,
          "y": -1059.7999954223633
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "entryKind": "Initial",
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a217add9-69cb-4a16-a4f8-548ec34fe767",
        "z": 3012,
        "embeds": [
          "5d98b5f9-217d-4411-92b1-19f6788644d4"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "fill": "#555555"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -1749,
          "y": -964.9375
        },
        "size": {
          "height": 131.875,
          "width": 166
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
        "z": 3013,
        "embeds": [
          "f5dc0d2b-4a3f-4d2d-8289-35d92175e0ab",
          "5dc1ee54-955a-442b-bb0d-ce8cfdce8e5b"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "text": "ST_MENU_SETUP"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -2321.8268508911133,
          "y": -1282.1312465667725
        },
        "size": {
          "width": 837.8094482421875,
          "height": 169.7500457763672
        },
        "angle": 0,
        "linkable": false,
        "id": "6ace7a9c-3b4a-4e37-b7a6-44830df0b005",
        "z": 3019,
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "label": {
            "text": "TIENE DOS PARAMETROS CONFIGURABLES\nTIEMPO DE ESPERA, Y TIEMPO DE PERMANENCIA DEBAJO(Antes de que empiece a sonar la alarma)\nPODRÍA SETEARSE UN MINIMO PARA AMBOS (Por ahora dejo 0)\nHAY QUE HACER TODO SOLO CON 2 PULSADORES\nSI LO HACEMOS CON 2 PODEMOS HACER QUE EL DE ENTER Y EL DE CONFIG SEAN EL MISMO QUE SEA UN\nBOTON DE MENU\nEN MODO NORMAL APRETANDO MENU TE VAS AL SETUP (AL MENU PRONCIPAL), CON EL NEXT ELEGIS QUE PARAMETRO\nCONFIGURAR\nAPRETAS EL MENU DE NUEVO Y VAS A ESE ESTADO (ESPERA O DBAJO), CON EL NEXT ELEGIS EL VALOR Y APRETANDO\nMENU DE NUEVO VOLVES AL ESTADO \"NORMAL\""
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -4747.012565612793,
          "y": -947.5
        },
        "id": "ae0cf90e-407a-43fa-a1f4-7aa39a37f6cc",
        "z": 3022,
        "parent": "5088e524-977a-43a6-ab4d-1cfa83ed41e0",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -1561.6944580078125,
          "y": -1044.7999954223633
        },
        "id": "5d98b5f9-217d-4411-92b1-19f6788644d4",
        "z": 3027,
        "parent": "a217add9-69cb-4a16-a4f8-548ec34fe767",
        "attrs": {
          "label": {
            "fill": "#333333",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a217add9-69cb-4a16-a4f8-548ec34fe767"
        },
        "target": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 113.416748046875,
              "dy": 25.3154296875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4bdf86dc-2012-437f-90fa-8b0047a8cd21",
        "z": 3028,
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 156.416748046875,
              "dy": 84.3154296875,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 76,
              "dy": 22.89639663696289,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_MENU [submenu == 2] /tmpo_debajo =TMPO_DEBAJO_MAX"
              }
            },
            "position": {
              "distance": 0.7968471154281697,
              "offset": -34.578482104500026,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5eb87323-b9e5-4b62-8e8c-a4eae2af4687",
        "z": 3028,
        "vertices": [
          {
            "x": -1405,
            "y": -758.75
          }
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115"
        },
        "target": {
          "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 108,
              "dy": 196.16666412353516,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_NEXT [tmpo_debajo == 0]\n/tmpo_debajo =TMPO_DEBAJO_MAX"
              }
            },
            "position": {
              "distance": 0.8494472858269289,
              "offset": 49.41648216225227,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e7bca249-4404-404c-a505-a07725ea8c03",
        "z": 3028,
        "parent": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 143,
              "dy": 104.87493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 132,
              "dy": 48.87493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_NEXT [tmpo_debajo >0]\n/tmpo_debajo --"
              }
            },
            "position": {
              "distance": 0.5077285059866399,
              "offset": 111.926025390625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "ab845f2a-cc6e-451d-9092-c0a38baf1fe7",
        "z": 3028,
        "vertices": [
          {
            "x": -1142,
            "y": -631.1250553131104
          }
        ],
        "parent": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 8,
              "dy": 82.25,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 67,
              "dy": 19.89639663696289,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_MENU [submenu == 1] /tmpo_espera=TMPO_ESPERA_MAX"
              }
            },
            "position": {
              "distance": 0.441039834003383,
              "offset": 133.61097041140468,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "e8bdce38-ea9f-4f26-a5dc-ecce46407552",
        "z": 3028,
        "vertices": [],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 37,
              "dy": 126.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 98,
              "dy": 115,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_NEXT [tmpo_espera == 0]\n/tmpo_espera =TMPO_ESPERA_MAX"
              }
            },
            "position": {
              "distance": 0.6201217527451671,
              "offset": 28.903618857280804,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "6ded51d0-302d-4cb3-8e65-03e64d70e048",
        "z": 3028,
        "vertices": [
          {
            "x": -1933.4899999999998,
            "y": -476.5
          }
        ],
        "parent": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "5088e524-977a-43a6-ab4d-1cfa83ed41e0"
        },
        "target": {
          "id": "f7315f39-6fc6-4ae4-a120-cc70502967ad",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 17.02490234375,
              "dy": 71.1875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3485f5fc-ef93-45de-9160-ee895b72455b",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 114.974853515625,
              "dy": 39.625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 151.85791015625,
              "dy": 108.57818603515625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after tmpo_espera s\n[auto_debajo == false]\n/tick = TICK_MAX;\nabriendo = false;\nraise EV_ACT_CERRANDO_ON"
              }
            },
            "position": {
              "distance": 0.5086526042972775,
              "offset": -51.00000000000006,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "aea3a25d-26c7-43b5-b160-8ae61e52e1ec",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "vertices": [
          {
            "x": -3293,
            "y": -903.7968149185181
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 119,
              "dy": 90.20318603515625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 163.3955078125,
              "dy": 82.375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_ACCIONAR_PORTON\n/tick = TICK_MAX;\nabriendo = false;\nraise EV_ACT_CERRANDO_ON"
              }
            },
            "position": {
              "distance": 0.5858673062374865,
              "offset": 49.070263867196694,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "41e86145-d89d-4e9e-b59f-ddfd14b4ea24",
        "z": 3028,
        "vertices": [
          {
            "x": -3502.974868774414,
            "y": -486.9968149185181
          }
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af"
        },
        "target": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 158.8828125,
              "dy": 5.57818603515625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_AUTO_DEBAJO_OFF\n/raise EV_ACT_CERRANDO_ON"
              }
            },
            "position": {
              "distance": 0.28152324852723176,
              "offset": -99.00001953125002,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d596b3d8-70f7-440d-877f-1645e91d68b7",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af"
        },
        "target": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 18.85791015625,
              "dy": 14,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_ACCIONAR_PORTON \n[abriendo == true && auto_debajo ==false]\n/abriendo = false;\nraise EV_ACT_CERRANDO_ON"
              }
            },
            "position": {
              "distance": 0.5606112035448683,
              "offset": 157.2763741183322,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2b30eb57-e2c2-4f46-9520-9aaca0dd303b",
        "z": 3028,
        "vertices": [
          {
            "x": -4232,
            "y": -772.1250553131104
          }
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b"
        },
        "target": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 128,
              "dy": 90,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick>0] \n/ tick --"
              }
            },
            "position": {
              "distance": 0.5189092747108797,
              "offset": 32,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b029b3c9-a88b-4fac-871a-d422e45334ee",
        "z": 3028,
        "parent": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b"
        },
        "target": {
          "id": "f7315f39-6fc6-4ae4-a120-cc70502967ad",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 33.02490234375,
              "dy": 124.39068603515625,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "\n[tick == 0]\n/raise EV_ACT_CERRANDO_OFF;\nraise EV_ACT_COMPLETAMENTE_CERRADO_ON"
              }
            },
            "position": {
              "distance": 0.493836032653982,
              "offset": -48.99580408993478,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1ca7ed51-923f-4dcf-a35a-55bd6713330c",
        "z": 3028,
        "vertices": [],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 174.3955078125,
              "dy": 14.375,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 124.3955078125,
              "dy": 53.078125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_ACCIONAR_PORTON [tick>0]\n/raise EV_ACT_CERRANDO_OFF"
              }
            },
            "position": {
              "distance": 0.6110282427880845,
              "offset": 111.658203125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2eb8fade-ba37-4532-a821-a634a4ec460f",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "vertices": [
          {
            "x": -3869.462303161621,
            "y": -555
          },
          {
            "x": -3759.974868774414,
            "y": -555
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 122.85791015625,
              "dy": -0.75006103515625,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 68.85791015625,
              "dy": 84.95306396484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_AUTO_DEBAJO_ON\n/raise EV_ACT_CERRANDO_OFF"
              }
            },
            "position": {
              "distance": 0.7561507958087189,
              "offset": -97.99999999999999,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "4"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "44560611-2d0c-4225-8f86-4d7742ca29d7",
        "z": 3028,
        "vertices": [],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f7315f39-6fc6-4ae4-a120-cc70502967ad"
        },
        "target": {
          "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 7.47509765625,
              "dy": 21.703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_ACCIONAR_PORTON\n/tick = TICK_MAX;\nabriendo = true;\nraise EV_ACT_ABRIENDO_ON;\nraise EV_ACT_COMPLETAMENTE_CERRADO_OFF"
              }
            },
            "position": {
              "distance": 0.30947762165516285,
              "offset": -51.0233154296875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d26adc4a-a530-4f75-a9ac-44e7f85ff76c",
        "z": 3028,
        "vertices": [
          {
            "x": -4599,
            "y": -1008.2968149185181
          }
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af"
        },
        "target": {
          "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 26.47509765625,
              "dy": 93.703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_ACCIONAR_PORTON [abriendo == false]\n/abriendo =true;\nraise EV_ACT_ABRIENDO_ON"
              }
            },
            "position": {
              "distance": 0.6274505016850486,
              "offset": -160,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "02db73d2-8a67-4681-afc1-2e177e1528b7",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6"
        },
        "target": {
          "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 57.47509765625,
              "dy": 9.703125,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick >0]\n/tick--"
              }
            },
            "position": {
              "distance": 0.5477704228077533,
              "offset": 28.077591252528343,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "980fec10-1018-48cd-a059-e45c49f92453",
        "z": 3028,
        "parent": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6"
        },
        "target": {
          "id": "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 73.9874267578125,
              "dy": 13.428573608398438,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[tick == 0]\n/raise EV_ACT_ABRIENDO_OFF"
              }
            },
            "position": {
              "distance": 0.5667334558000862,
              "offset": -19.73642851675182,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "d3446726-0fc2-4d88-829b-f06314aa921d",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6"
        },
        "target": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 83.47509765625,
              "dy": 22.0185546875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_ACCIONAR_PORTON [tick>0]\n/raise EV_ACT_ABRIENDO_OFF"
              }
            },
            "position": {
              "distance": 0.43364431211015225,
              "offset": -117.00008789062485,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "bd909b94-eb44-4c25-9039-d3c580c0952c",
        "z": 3028,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "82887126-7e2f-44d3-82f7-afb9063fef2f"
        },
        "target": {
          "x": -5348,
          "y": -1644,
          "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 350,
              "dy": 106.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3bccd32c-58e1-4bb5-9024-dc4c78648002",
        "z": 3028,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17"
        },
        "target": {
          "x": -3310,
          "y": -1058,
          "id": "8f4c816a-29cd-42dc-9c60-2287f7a616ef",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 22,
              "dy": 684,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_MENU"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "35e6b580-81b1-4727-89bf-428d96d70066",
        "z": 3028,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 11.5833740234375,
              "dy": 61.37493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.5833740234375,
              "dy": 22.37493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_NEXT [submenu<submenu_max]\n/submenu=submenu+1"
              }
            },
            "position": {
              "distance": 0.6629216016863511,
              "offset": -39.87043118998729,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5dc1ee54-955a-442b-bb0d-ce8cfdce8e5b",
        "z": 3028,
        "vertices": [
          {
            "x": -1807.4166641235352,
            "y": -929.5625553131104
          }
        ],
        "parent": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 156.5833740234375,
              "dy": 73.37493896484375,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 168.5069580078125,
              "dy": 27.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_NEXT [submenu==submenu_max]\n/submenu=1"
              }
            },
            "position": {
              "distance": 0.5460686650106277,
              "offset": 135.0096435546875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f5dc0d2b-4a3f-4d2d-8289-35d92175e0ab",
        "z": 3029,
        "vertices": [
          {
            "x": -1507,
            "y": -937.4350553131103
          }
        ],
        "parent": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a"
        },
        "target": {
          "x": -3177,
          "y": -522,
          "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1609,
              "dy": 855.875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_MENU"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c7fdcb9a-beaa-4e29-8cef-5826bda8880d",
        "z": 3030,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a"
        },
        "target": {
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 20,
              "dy": 49.5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_NEXT [tmpo_espera >0]\n/tmpo_espera --"
              }
            },
            "position": {
              "distance": 0.4100576724188752,
              "offset": 24.457082490992896,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "32b6c883-ba5c-4d2d-857c-448b9bf461f1",
        "z": 3031,
        "vertices": [
          {
            "x": -2137,
            "y": -627.7968149185181
          }
        ],
        "parent": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 10,
              "dy": 106,
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "x": -3183,
          "y": -380,
          "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1603,
              "dy": 997.875,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_SYS_MENU"
              }
            },
            "position": {
              "distance": 0.2291946157458251,
              "offset": 16,
              "angle": 0
            }
          },
          {
            "attrs": {
              "root": {
                "opacity": 1
              },
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2bf14f02-a9c0-4d36-a32b-5db321c21f52",
        "z": 3032,
        "vertices": [
          {
            "x": -3117,
            "y": -380
          }
        ],
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "TpFinal",
          "statemachinePrefix": "tpFinal",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": "",
          "exitState": "",
          "generic": ""
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}