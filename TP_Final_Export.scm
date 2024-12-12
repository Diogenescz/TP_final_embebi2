{
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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    \n    in event EV_BTN_MENU_DOWN\n    in event EV_BTN_MENU_UP\n    in event EV_BTN_AUTO_DEBAJO_DOWN\n    in event EV_BTN_AUTO_DEBAJO_UP\n    in event EV_BTN_NEXT_DOWN\n    in event EV_BTN_NEXT_UP\n    in event EV_BTN_ENTER_DOWN\n    in event EV_BTN_ENTER_UP\n    in event EV_BTN_ACCIONAR_PORTON_DOWN\n    in event EV_BTN_ACCIONAR_PORTON_UP\n     in event EV_SYS_CONFIGURAR\n    \ninternal:\n        \n    var submenu: integer\n    const submenu_max: integer = 3\n    \n    var tmpo_espera: integer\n    var tmpo_debajo: integer\n   \n    \n    const TICK_MAX: integer = 1\n    const TMPO_ESPERA_MAX: integer = 1\n    const TMPO_DEBAJO_MAX: integer = 1\n    const TMPO_REACCION: integer = 1\n    var tick: integer\n    var abriendo:boolean\n    var auto_debajo:boolean = false\n    \n    event EV_SYS_MENU\n    event EV_SYS_ACCIONAR_PORTON\n    event EV_SYS_ENTER\n    event EV_SYS_NEXT\n  "
          }
        }
      },
      {
        "type": "Region",
        "position": {
          "x": -181,
          "y": -501.5
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
        "z": 793,
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
          "x": 164,
          "y": -236.25
        },
        "size": {
          "width": 127,
          "height": 103.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "ae83794e-8ee9-48ed-8530-7a5170e3dc49",
        "z": 794,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_UP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 543.5125045776367,
          "y": -377.5
        },
        "size": {
          "width": 141,
          "height": 98
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d66797fd-fa14-48d4-80a7-19fd07503833",
        "z": 795,
        "embeds": [
          "0614dcfe-44e1-472f-942d-1cc72002b89b"
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_FALLING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 892.012565612793,
          "y": -279.5
        },
        "size": {
          "width": 134,
          "height": 102
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "b77f1e03-7075-4857-9b7a-b9b39e8eef6c",
        "z": 796,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_DOWN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -109,
          "y": -453.5
        },
        "size": {
          "width": 216,
          "height": 106
        },
        "angle": 0,
        "linkable": false,
        "id": "f17134fb-bb13-4a26-ab08-bbb244ac6875",
        "z": 797,
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
          "x": 524.0125045776367,
          "y": -111
        },
        "size": {
          "width": 180,
          "height": 99
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
        "z": 799,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "embeds": [
          "5831361c-6151-4af6-bce1-3c295d0e6068"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_MENU_INCREASING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
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
          }
        ],
        "id": "e299c5bb-e0f2-4e0a-b77b-75cbca327b90",
        "z": 809,
        "vertices": [
          {
            "x": 896,
            "y": -25.5
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
          }
        ],
        "id": "1c91c1ff-ca06-49e5-a6a8-582b79f8e791",
        "z": 809,
        "vertices": [
          {
            "x": 884,
            "y": -61.069999999999936
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
          }
        ],
        "id": "5831361c-6151-4af6-bce1-3c295d0e6068",
        "z": 809,
        "parent": "7adcbb22-bbd6-438c-99e4-d0c5deed425f",
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
          }
        ],
        "id": "227f936e-02c3-40c6-9953-092de844fe0e",
        "z": 809,
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
          }
        ],
        "id": "0614dcfe-44e1-472f-942d-1cc72002b89b",
        "z": 809,
        "vertices": [
          {
            "x": 660,
            "y": -415.5
          },
          {
            "x": 600.0000305175781,
            "y": -415.5
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
          }
        ],
        "id": "672b1153-ceeb-4a5d-ae29-73c0293f5371",
        "z": 809,
        "vertices": [
          {
            "x": 384,
            "y": -307.5
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
          }
        ],
        "id": "00d12154-8546-4bcc-825b-ca969f0456ab",
        "z": 809,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "vertices": [
          {
            "x": 361,
            "y": -61.5
          }
        ],
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
          }
        ],
        "id": "1ff76e16-53ff-4baa-9189-a79cfac73451",
        "z": 809,
        "vertices": [
          {
            "x": 219,
            "y": -340.07000000000016
          }
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -60.01256561279297,
          "y": -199.5
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
        "z": 810,
        "embeds": [
          "dbd2ba2f-3dd0-43c8-a034-73b2d37b43fa"
        ],
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -60.01256561279297,
          "y": -184.5
        },
        "id": "dbd2ba2f-3dd0-43c8-a034-73b2d37b43fa",
        "z": 811,
        "parent": "ce73b553-5d7a-4f43-8cd2-9d063d441224",
        "attrs": {
          "label": {
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
          }
        ],
        "id": "fad4fc9f-47e6-4eee-9f8c-3db46d9b91d1",
        "z": 812,
        "parent": "14eb10bc-990d-465b-80ac-689c7c82d871",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -179,
          "y": 134.5
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
        "z": 813,
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
          "x": 166,
          "y": 399.75
        },
        "size": {
          "width": 163,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0f405037-a62d-4b53-ba6b-6518b4a0268c",
        "z": 814,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_UP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 494.5437545776367,
          "y": 258.5
        },
        "size": {
          "width": 195,
          "height": 83
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c8245176-fc61-4f97-ba16-e2849738b626",
        "z": 815,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "embeds": [
          "7123b992-9377-43ed-8a6d-97b5f7d7b77c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_FALLING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -107,
          "y": 182.5
        },
        "size": {
          "width": 288,
          "height": 104
        },
        "angle": 0,
        "linkable": false,
        "id": "03960b73-b993-419c-bb69-e92b750f60ef",
        "z": 817,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "label": {
            "text": "Aca sería el boton para indicar que\nhay un auto debajo",
            "annotations": [
              {
                "start": 0,
                "end": 54,
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
          "x": 485.0125045776367,
          "y": 540
        },
        "size": {
          "width": 221,
          "height": 84
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
        "z": 818,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "embeds": [
          "21f11671-884a-4adb-acd9-f6c883f740b7"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_INCREASING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
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
          }
        ],
        "id": "8db174f4-de97-415e-9295-41c952cdcd40",
        "z": 823,
        "vertices": [
          {
            "x": 221,
            "y": 295.92999999999984
          }
        ],
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
          }
        ],
        "id": "73775213-ae0b-4ab6-b053-e8aea5b2dd8b",
        "z": 824,
        "vertices": [
          {
            "x": 383,
            "y": 332.5
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -58.01256561279297,
          "y": 436.5
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
        "z": 827,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "embeds": [
          "be4ce345-6e0a-47e0-89bc-691149f09121"
        ],
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -58.01256561279297,
          "y": 451.5
        },
        "id": "be4ce345-6e0a-47e0-89bc-691149f09121",
        "z": 828,
        "parent": "efd5879c-004c-4b04-9f64-ed3a8cf9e5cf",
        "attrs": {
          "label": {
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
          }
        ],
        "id": "c4fcced0-b313-4aac-8394-20352aad199b",
        "z": 829,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -181,
          "y": 770.5
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
        "z": 830,
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
          "x": 164,
          "y": 1035.75
        },
        "size": {
          "width": 127,
          "height": 103.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8b1416be-8244-43d5-b9c3-62a54c2c0ce6",
        "z": 831,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_UP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 543.5125045776367,
          "y": 894.5
        },
        "size": {
          "width": 144.02500915527344,
          "height": 98
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
        "z": 832,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "embeds": [
          "abe3db25-b756-469d-ba2b-5557c64fa35d"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_FALLING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 892.012565612793,
          "y": 992.5
        },
        "size": {
          "width": 134,
          "height": 102
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "63c4f0f2-a738-45ae-b6ac-c9cc5faac0eb",
        "z": 833,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_DOWN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -109,
          "y": 818.5
        },
        "size": {
          "width": 216,
          "height": 106
        },
        "angle": 0,
        "linkable": false,
        "id": "1415c45a-a6de-4ef9-90e5-0fc82751a896",
        "z": 834,
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
          "x": 524.0125045776367,
          "y": 1161
        },
        "size": {
          "width": 180,
          "height": 99
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c78a8f1e-f943-4e26-9059-716feeb98afe",
        "z": 835,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "embeds": [
          "f4eb0708-df31-417c-a011-8ce1c9d5c619"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_NEXT_INCREASING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
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
          }
        ],
        "id": "035cd599-5cac-4d21-92e9-bbc2c5ee2a6b",
        "z": 836,
        "vertices": [
          {
            "x": 884,
            "y": 1210.93
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
          }
        ],
        "id": "8b7ac10d-eb2b-495b-8c41-4e67b1371426",
        "z": 837,
        "vertices": [],
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
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
          }
        ],
        "id": "9ad01e91-ee88-4b29-8aa5-f02c3b20a11d",
        "z": 838,
        "vertices": [
          {
            "x": 896,
            "y": 1246.5
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
          }
        ],
        "id": "feab01ab-7710-4332-8846-a7f7be7f1a80",
        "z": 839,
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
          }
        ],
        "id": "16132039-3baa-4150-ba90-0aac466635a6",
        "z": 840,
        "vertices": [
          {
            "x": 219,
            "y": 931.9299999999998
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
          }
        ],
        "id": "a26c55aa-5a1f-4e00-9bb4-12bba55dce96",
        "z": 841,
        "vertices": [
          {
            "x": 384,
            "y": 964.5
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
          }
        ],
        "id": "abe3db25-b756-469d-ba2b-5557c64fa35d",
        "z": 842,
        "vertices": [
          {
            "x": 660,
            "y": 856.5
          },
          {
            "x": 600.0000305175781,
            "y": 856.5
          }
        ],
        "parent": "c9416973-0b4f-4ec7-a171-efa7e09e0d49",
        "attrs": {}
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
          }
        ],
        "id": "f4eb0708-df31-417c-a011-8ce1c9d5c619",
        "z": 843,
        "parent": "c78a8f1e-f943-4e26-9059-716feeb98afe",
        "attrs": {}
      },
      {
        "type": "Entry",
        "position": {
          "x": -60.01256561279297,
          "y": 1072.5
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
        "z": 844,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
        "embeds": [
          "58f502a6-0b3c-4ec9-aaf0-1798639ea683"
        ],
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -60.01256561279297,
          "y": 1087.5
        },
        "id": "58f502a6-0b3c-4ec9-aaf0-1798639ea683",
        "z": 845,
        "parent": "e9598112-1492-4033-bb38-e7d4e08da1a8",
        "attrs": {
          "label": {
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
          }
        ],
        "id": "63f97b77-1332-457c-889e-f3aa97ce4483",
        "z": 846,
        "parent": "39ecc724-d3d3-495a-8729-bada5acd9d06",
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
          }
        ],
        "id": "aad71bbc-83c4-431c-92d3-b9d649d54f42",
        "z": 1824,
        "vertices": [],
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
          }
        ],
        "id": "21f11671-884a-4adb-acd9-f6c883f740b7",
        "z": 1827,
        "parent": "f8fd6001-ad02-4c93-8765-33acd24e0fb2",
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
          }
        ],
        "id": "7123b992-9377-43ed-8a6d-97b5f7d7b77c",
        "z": 1828,
        "vertices": [
          {
            "x": 662,
            "y": 220.5
          },
          {
            "x": 602.0000305175781,
            "y": 220.5
          }
        ],
        "parent": "c8245176-fc61-4f97-ba16-e2849738b626",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": 1139.012565612793,
          "y": 385.75
        },
        "size": {
          "width": 190,
          "height": 74
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8833c88b-c607-4740-b40e-c2214602ed79",
        "z": 1833,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {
          "name": {
            "text": "ST_BTN_AUTO_DEBAJO_DOWN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
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
                "text": "EV_BTN_AUTO_DEBAJO_DOWN [tick == 0 && auto_debajo == false]\n/  auto_debajo = true"
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
          }
        ],
        "id": "b64529de-222e-42be-93a0-09f96e936718",
        "z": 1834,
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
          }
        ],
        "id": "6cae3c97-2913-49c7-b0b1-97f167206c02",
        "z": 1834,
        "vertices": [
          {
            "x": 898,
            "y": 610.5
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
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
          }
        ],
        "id": "1a24be17-67c2-4e9a-8c8f-1bd3f112886b",
        "z": 1834,
        "vertices": [
          {
            "x": 1074,
            "y": 589.43
          }
        ],
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
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
                "text": "EV_BTN_AUTO_DEBAJO_DOWN [tick == 0 && auto_debajo == true]\n/  auto_debajo = false"
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
          }
        ],
        "id": "bc8a52f5-7686-426b-92e3-6d388cb27389",
        "z": 1835,
        "parent": "f6d8fc35-d084-4dcf-a92e-dc36c2c394b6",
        "attrs": {}
      },
      {
        "type": "State",
        "position": {
          "x": -5311,
          "y": -1199
        },
        "size": {
          "width": 157,
          "height": 133.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0eeb9828-6b1a-4a54-a02d-8cd8ffe9ec2c",
        "z": 1836,
        "attrs": {
          "name": {
            "text": "ST_PORTON_CERRADO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4822.47492980957,
          "y": -1150.703125
        },
        "size": {
          "width": 127,
          "height": 103.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "4426d2a6-9b1d-44f5-911a-20c2d18f199e",
        "z": 1837,
        "attrs": {
          "name": {
            "text": "ST_PORTON_FRENADO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "4426d2a6-9b1d-44f5-911a-20c2d18f199e"
        },
        "target": {
          "id": "0eeb9828-6b1a-4a54-a02d-8cd8ffe9ec2c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 156,
              "dy": 68,
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
                "text": "EV_SYS_ACCIONAR_PORTON [abriendo == true]"
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
          }
        ],
        "id": "06b5d2c9-307a-4363-9aac-f0dfc0d66495",
        "z": 1838,
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -7028,
          "y": -1980
        },
        "size": {
          "height": 1953,
          "width": 5401
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "z": 1885,
        "embeds": [
          "0d258f19-8532-4b9a-a0b3-4cd7bf2b0b45",
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
          "x": -6472.025131225586,
          "y": -1682.875005722046
        },
        "size": {
          "width": 1369.025131225586,
          "height": 1081
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
        "z": 1886,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "embeds": [
          "e667c0e5-ce25-439a-941c-d8f8a1136c74"
        ],
        "attrs": {
          "name": {
            "text": "ST_MODO_NORMAL",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -4431,
          "y": -1643
        },
        "size": {
          "width": 1674,
          "height": 1041.124994277954
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8f4c816a-29cd-42dc-9c60-2287f7a616ef",
        "z": 1887,
        "embeds": [
          "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d"
        ],
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "attrs": {
          "name": {
            "text": "ST_MODO_SETUP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -6569.986110687256,
          "y": -1915
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "82887126-7e2f-44d3-82f7-afb9063fef2f",
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
        "z": 1888,
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
          "x": -6471.025131225586,
          "y": -1661.078130722046
        },
        "size": {
          "height": 1058.203125,
          "width": 1367.025131225586
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "z": 1892,
        "embeds": [
          "3485f5fc-ef93-45de-9160-ee895b72455b",
          "1ca7ed51-923f-4dcf-a35a-55bd6713330c",
          "d26adc4a-a530-4f75-a9ac-44e7f85ff76c",
          "d3446726-0fc2-4d88-829b-f06314aa921d",
          "41e86145-d89d-4e9e-b59f-ddfd14b4ea24",
          "2b30eb57-e2c2-4f46-9520-9aaca0dd303b",
          "2eb8fade-ba37-4532-a821-a634a4ec460f",
          "bd909b94-eb44-4c25-9039-d3c580c0952c",
          "02db73d2-8a67-4681-afc1-2e177e1528b7",
          "8a66df1d-1c33-4135-bb11-634a2edc20b6",
          "bfcaec29-6c86-413c-bf36-d477c7e766af",
          "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
          "5088e524-977a-43a6-ab4d-1cfa83ed41e0",
          "f7315f39-6fc6-4ae4-a120-cc70502967ad",
          "6359ab2c-34c0-4118-bc52-054eabedc8a6"
        ],
        "parent": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -4430,
          "y": -1621.203125
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
        "z": 1893,
        "embeds": [
          "2bf14f02-a9c0-4d36-a32b-5db321c21f52",
          "5eb87323-b9e5-4b62-8e8c-a4eae2af4687",
          "e8bdce38-ea9f-4f26-a5dc-ecce46407552",
          "42ae8579-f7c1-4d50-b81f-8841787c5b8c",
          "4bdf86dc-2012-437f-90fa-8b0047a8cd21",
          "6ace7a9c-3b4a-4e37-b7a6-44830df0b005",
          "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "a217add9-69cb-4a16-a4f8-548ec34fe767",
          "3ea82168-f16d-4d13-9dd6-31e551afb05a",
          "c6a4d30a-0807-4f4d-95c3-65a0e3eff115"
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
          "x": -6569.986110687256,
          "y": -1900
        },
        "id": "d28b13b8-9045-4a23-875b-386fc7aa4dfa",
        "z": 1894,
        "parent": "82887126-7e2f-44d3-82f7-afb9063fef2f",
        "attrs": {
          "label": {
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
          "x": -5768,
          "y": -1335
        },
        "size": {
          "width": 151.234375,
          "height": 131.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
        "z": 1895,
        "embeds": [
          "980fec10-1018-48cd-a059-e45c49f92453"
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_ABRIENDO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -5755.8828125,
          "y": -1138.078130722046
        },
        "size": {
          "width": 127,
          "height": 103.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "bfcaec29-6c86-413c-bf36-d477c7e766af",
        "z": 1896,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_FRENADO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -5808.8828125,
          "y": -874.3750057220459
        },
        "size": {
          "width": 180,
          "height": 132.59375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
        "z": 1897,
        "embeds": [
          "b029b3c9-a88b-4fac-871a-d422e45334ee"
        ],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_CERRANDO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -5367,
          "y": -1311
        },
        "size": {
          "width": 134,
          "height": 102
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "58ac61db-d713-45a4-b6c7-2f558d1aa4dd",
        "z": 1898,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_ABIERTO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -6399.011241912842,
          "y": -1129.937502861023
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "5088e524-977a-43a6-ab4d-1cfa83ed41e0",
        "z": 1899,
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -6278.025131225586,
          "y": -1189.187502861023
        },
        "size": {
          "width": 157,
          "height": 133.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f7315f39-6fc6-4ae4-a120-cc70502967ad",
        "z": 1900,
        "embeds": [],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "name": {
            "text": "ST_PORTON_CERRADO",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -5457,
          "y": -1577
        },
        "size": {
          "width": 290.7436218261719,
          "height": 173
        },
        "angle": 0,
        "linkable": false,
        "id": "6359ab2c-34c0-4118-bc52-054eabedc8a6",
        "z": 1901,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {
          "label": {
            "text": "SI NO ES CON EL TICK SE PUEDE HACER CON\n(AFTER X SECONDS)"
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -4226.5,
          "y": -1434
        },
        "size": {
          "width": 607.703125,
          "height": 60
        },
        "angle": 0,
        "linkable": false,
        "id": "6ace7a9c-3b4a-4e37-b7a6-44830df0b005",
        "z": 1911,
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "label": {
            "text": "TIENE DOS PARAMETROS CONFIGURABLES\nTIEMPO DE ESPERA, Y TIEMPO DE PERMANENCIA (Antes de que empiece a sonar la alarma?)\nPODRÍA SETEARSE UN MINIMO PARA AMBOS (Por ahora dejo 0)"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -3602.416664123535,
          "y": -1209
        },
        "size": {
          "width": 171.8333282470703,
          "height": 88.375
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
        "z": 1912,
        "embeds": [
          "5dc1ee54-955a-442b-bb0d-ce8cfdce8e5b",
          "f5dc0d2b-4a3f-4d2d-8289-35d92175e0ab"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "text": "Menú 2",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -3500.6944580078125,
          "y": -1434
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "a217add9-69cb-4a16-a4f8-548ec34fe767",
        "z": 1913,
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -3933,
          "y": -939.5
        },
        "size": {
          "width": 143.02777862548828,
          "height": 130
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
        "z": 1914,
        "embeds": [
          "6ded51d0-302d-4cb3-8e65-03e64d70e048",
          "32b6c883-ba5c-4d2d-857c-448b9bf461f1"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "text": "Menú 3 - Power",
            "fill": "#555555",
            "fontSize": 12
          },
          "specification": {
            "text": "\n"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -3260,
          "y": -985
        },
        "size": {
          "width": 147,
          "height": 199.3333282470703
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
        "z": 1915,
        "embeds": [
          "e7bca249-4404-404c-a505-a07725ea8c03",
          "ab845f2a-cc6e-451d-9092-c0a38baf1fe7"
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {
          "name": {
            "text": "Menú 3 - Spin",
            "fill": "#555555",
            "fontSize": 12
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
          "x": -6399.011241912842,
          "y": -1114.937502861023
        },
        "id": "ae0cf90e-407a-43fa-a1f4-7aa39a37f6cc",
        "z": 1923,
        "parent": "5088e524-977a-43a6-ab4d-1cfa83ed41e0",
        "attrs": {
          "label": {
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
          "x": -3500.6944580078125,
          "y": -1419
        },
        "id": "5d98b5f9-217d-4411-92b1-19f6788644d4",
        "z": 1926,
        "parent": "a217add9-69cb-4a16-a4f8-548ec34fe767",
        "attrs": {
          "label": {
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
          "id": "3ea82168-f16d-4d13-9dd6-31e551afb05a"
        },
        "target": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 39.5069580078125,
              "dy": 76.89639282226562,
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
                "text": "EV_SYS_ENTER"
              }
            },
            "position": {
              "distance": 0.10860352125275916,
              "offset": -14.004211425781252,
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
          }
        ],
        "id": "42ae8579-f7c1-4d50-b81f-8841787c5b8c",
        "z": 1927,
        "vertices": [],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {}
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
          }
        ],
        "id": "4bdf86dc-2012-437f-90fa-8b0047a8cd21",
        "z": 1927,
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
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
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 96.416748046875,
              "dy": 88.3154296875,
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
                "text": "EV_SYS_ENTER"
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
          }
        ],
        "id": "2bf14f02-a9c0-4d36-a32b-5db321c21f52",
        "z": 1927,
        "vertices": [
          {
            "x": -3485,
            "y": -877
          }
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa"
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
              "distance": 0.5471813794272817,
              "offset": 74.18106914554039,
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
          }
        ],
        "id": "f5dc0d2b-4a3f-4d2d-8289-35d92175e0ab",
        "z": 1927,
        "vertices": [
          {
            "x": -3337.909719467163,
            "y": -1151
          }
        ],
        "parent": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa"
        },
        "target": {
          "id": "f78a822c-e00c-4e71-9dcf-1204648f50aa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 0.5069580078125,
              "dy": 56.896392822265625,
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
              "distance": 0.3661785383909462,
              "offset": 103.3318044776729,
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
          }
        ],
        "id": "5dc1ee54-955a-442b-bb0d-ce8cfdce8e5b",
        "z": 1927,
        "vertices": [
          {
            "x": -3632.416664123535,
            "y": -1189
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
                "text": "EV_SYS_ENTER [submenu == 1] /tmpo_espera=TMPO_ESPERA_MAX"
              }
            },
            "position": {
              "distance": 0.5498580019252335,
              "offset": 17.075566963831378,
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
          }
        ],
        "id": "e8bdce38-ea9f-4f26-a5dc-ecce46407552",
        "z": 1927,
        "vertices": [],
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
                "text": "EV_SYS_ENTER [submenu == 2] /tmpo_debajo =TMPO_DEBAJO_MAX"
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
          }
        ],
        "id": "5eb87323-b9e5-4b62-8e8c-a4eae2af4687",
        "z": 1927,
        "vertices": [
          {
            "x": -3333,
            "y": -1063.75
          }
        ],
        "parent": "8c850b9f-8ffb-4bbe-b11f-15ae08492e4d",
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
          }
        ],
        "id": "3485f5fc-ef93-45de-9160-ee895b72455b",
        "z": 1927,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "58ac61db-d713-45a4-b6c7-2f558d1aa4dd"
        },
        "target": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 168.85791015625,
              "dy": 27,
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
                "text": "EV_SYS_ACCIONAR_PORTON\n/tick = TICK_MAX;\nabriendo = false"
              }
            },
            "position": {
              "distance": 0.7065786657930038,
              "offset": 47.046142578125,
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
          }
        ],
        "id": "41e86145-d89d-4e9e-b59f-ddfd14b4ea24",
        "z": 1927,
        "vertices": [
          {
            "x": -5247.025131225586,
            "y": -853.3750057220459
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
          }
        ],
        "id": "b029b3c9-a88b-4fac-871a-d422e45334ee",
        "z": 1927,
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
                "text": "\n[tick == 0]"
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
                "text": "2"
              }
            }
          }
        ],
        "id": "1ca7ed51-923f-4dcf-a35a-55bd6713330c",
        "z": 1927,
        "vertices": [],
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9dd97b1b-86cf-4354-92ab-f506da620b0b"
        },
        "target": {
          "id": "bfcaec29-6c86-413c-bf36-d477c7e766af",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 79.47509765625,
              "dy": 102.0185546875,
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
                "text": "EV_SYS_ACCIONAR_PORTON [tick>0]"
              }
            },
            "position": {
              "distance": 0.7729883303587461,
              "offset": 142,
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
          }
        ],
        "id": "2eb8fade-ba37-4532-a821-a634a4ec460f",
        "z": 1927,
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
                "text": "EV_SYS_ACCIONAR_PORTON [abriendo == true]\n/abriendo = false"
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
                "text": "2"
              }
            }
          }
        ],
        "id": "2b30eb57-e2c2-4f46-9520-9aaca0dd303b",
        "z": 1927,
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
                "text": "EV_SYS_ACCIONAR_PORTON\n/tick = TICK_MAX;\nabriendo = true"
              }
            },
            "position": {
              "distance": 0.2986074801649436,
              "offset": -27.0233154296875,
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
          }
        ],
        "id": "d26adc4a-a530-4f75-a9ac-44e7f85ff76c",
        "z": 1927,
        "vertices": [
          {
            "x": -6005,
            "y": -1313.3
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
                "text": "EV_SYS_ACCIONAR_PORTON [abriendo == false]\n/abriendo =true"
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
          }
        ],
        "id": "02db73d2-8a67-4681-afc1-2e177e1528b7",
        "z": 1927,
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
          }
        ],
        "id": "980fec10-1018-48cd-a059-e45c49f92453",
        "z": 1927,
        "parent": "8a66df1d-1c33-4135-bb11-634a2edc20b6",
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
                "text": "EV_SYS_ACCIONAR_PORTON [tick>0]"
              }
            },
            "position": {
              "distance": 0.3823534198835789,
              "offset": -122,
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
          }
        ],
        "id": "bd909b94-eb44-4c25-9039-d3c580c0952c",
        "z": 1927,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
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
                "text": "[tick == 0]"
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
          }
        ],
        "id": "d3446726-0fc2-4d88-829b-f06314aa921d",
        "z": 1927,
        "parent": "e667c0e5-ce25-439a-941c-d8f8a1136c74",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "8f4c816a-29cd-42dc-9c60-2287f7a616ef"
        },
        "target": {
          "x": -3941,
          "y": -783,
          "id": "0f4b0a04-0eb0-4333-a08c-ec9284e33e17",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 1345.02490234375,
              "dy": 862.875,
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
          }
        ],
        "id": "0d258f19-8532-4b9a-a0b3-4cd7bf2b0b45",
        "z": 1927,
        "parent": "6e82437d-7cb7-4393-928d-b844bce30d17",
        "vertices": [],
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
          }
        ],
        "id": "3bccd32c-58e1-4bb5-9024-dc4c78648002",
        "z": 1927,
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
          }
        ],
        "id": "35e6b580-81b1-4727-89bf-428d96d70066",
        "z": 1927,
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
              "dx": 1,
              "dy": 58,
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
              "distance": 0.28312988229178837,
              "offset": 33.845742190794915,
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
          }
        ],
        "id": "32b6c883-ba5c-4d2d-857c-448b9bf461f1",
        "z": 1927,
        "vertices": [
          {
            "x": -4119,
            "y": -910.5
          }
        ],
        "parent": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
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
                "text": "3"
              }
            }
          }
        ],
        "id": "6ded51d0-302d-4cb3-8e65-03e64d70e048",
        "z": 1928,
        "vertices": [
          {
            "x": -3861.49,
            "y": -781.5
          }
        ],
        "parent": "3ea82168-f16d-4d13-9dd6-31e551afb05a",
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
              "dx": 114,
              "dy": 126.16666412353516,
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
              "distance": 0.5055722335813968,
              "offset": 111,
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
          }
        ],
        "id": "ab845f2a-cc6e-451d-9092-c0a38baf1fe7",
        "z": 1929,
        "vertices": [
          {
            "x": -3041,
            "y": -815.8333358764648
          }
        ],
        "parent": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
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
              "distance": 0.3970322394131423,
              "offset": 37,
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
          }
        ],
        "id": "e7bca249-4404-404c-a505-a07725ea8c03",
        "z": 1930,
        "parent": "c6a4d30a-0807-4f4d-95c3-65a0e3eff115",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -1638,
          "y": 1433
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
        "z": 1984,
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
          "x": -1333,
          "y": 1702.25
        },
        "size": {
          "width": 180.03125,
          "height": 66
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "34e1718c-e9d4-4b20-a81d-30a677904bc2",
        "z": 1985,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_UP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -909.4874954223633,
          "y": 1561
        },
        "size": {
          "width": 216.046875,
          "height": 98
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "5222b40f-8c9b-4b5c-b2d7-2ed0789fc6d9",
        "z": 1986,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "embeds": [
          "89c6a16f-9821-4f69-87ef-c9e31a202097"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_FALLING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -560.987434387207,
          "y": 1659
        },
        "size": {
          "width": 194.4375,
          "height": 102
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "27516583-68e9-45c7-9cb1-32b226042373",
        "z": 1987,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_DOWN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -1566,
          "y": 1481
        },
        "size": {
          "width": 255,
          "height": 102
        },
        "angle": 0,
        "linkable": false,
        "id": "be039445-8228-4c35-9537-531204024f31",
        "z": 1988,
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
          "x": -928.9874954223633,
          "y": 1827.5
        },
        "size": {
          "width": 237.640625,
          "height": 99
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "1218e9fd-d7ad-4077-b214-cff40da03f1e",
        "z": 1989,
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "embeds": [
          "b5230ec2-304c-4f3e-b00c-14f41d014c6b"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ACCIONAR_PORTON_INCREASING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -1515.012565612793,
          "y": 1735
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "entryKind": "Initial",
        "id": "e24fcbfc-ce94-4281-95b3-6bd4e970fee3",
        "z": 1990,
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -1515.012565612793,
          "y": 1750
        },
        "id": "20ad59ab-d241-4eb2-8386-f27e59733f14",
        "z": 2000,
        "parent": "e24fcbfc-ce94-4281-95b3-6bd4e970fee3",
        "attrs": {
          "label": {
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
          }
        ],
        "id": "b5230ec2-304c-4f3e-b00c-14f41d014c6b",
        "z": 2001,
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
          }
        ],
        "id": "e9b2bc7a-4837-4134-a439-054d830d3e37",
        "z": 2001,
        "vertices": [
          {
            "x": -557,
            "y": 1913
          },
          {
            "x": -463,
            "y": 1838.5
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
          }
        ],
        "id": "725adb93-ed1d-4d53-bd03-e1b036464c6a",
        "z": 2001,
        "vertices": [
          {
            "x": -569,
            "y": 1877.43
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
          }
        ],
        "id": "89c6a16f-9821-4f69-87ef-c9e31a202097",
        "z": 2001,
        "vertices": [
          {
            "x": -793,
            "y": 1523
          },
          {
            "x": -852.9999694824219,
            "y": 1523
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
          }
        ],
        "id": "9e4caff9-46c1-4ea0-bc79-a2abb675c92e",
        "z": 2001,
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
          }
        ],
        "id": "b304cd40-b0ae-4922-aabd-4ca706474f98",
        "z": 2001,
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
          }
        ],
        "id": "eea4581c-f143-49c7-b06f-7b94d699fa1d",
        "z": 2001,
        "vertices": [
          {
            "x": -1069,
            "y": 1631
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
          }
        ],
        "id": "d7da164d-c7f4-4745-ac74-c75841e53567",
        "z": 2001,
        "vertices": [
          {
            "x": -1234,
            "y": 1598.4299999999998
          },
          {
            "x": -1149,
            "y": 1544.5
          }
        ],
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
          }
        ],
        "id": "003d6f4e-147f-4494-8296-0029457e1674",
        "z": 2002,
        "vertices": [
          {
            "x": -1104,
            "y": 1877
          }
        ],
        "parent": "df1a96c0-d3e9-44b6-a12c-c3a013d78d90",
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": -1713,
          "y": 789.5
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
        "z": 2021,
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
          "x": -1364,
          "y": 1058.75
        },
        "size": {
          "width": 127,
          "height": 103.5
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "aeeafc40-7fa7-4c97-a80d-56cfa59bcd99",
        "z": 2022,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_UP",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -984.4874954223633,
          "y": 917.5
        },
        "size": {
          "width": 151.234375,
          "height": 98
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "d3d82cdc-9673-43d8-96e1-c65aab1fc81d",
        "z": 2023,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "embeds": [
          "c50fc3d3-360c-4b17-9b2b-4746f4c8f8f1"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_FALLING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": -635.987434387207,
          "y": 1015.5
        },
        "size": {
          "width": 134,
          "height": 102
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "2ed57b66-4045-48eb-beaf-6c842bc07855",
        "z": 2024,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_DOWN",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Note",
        "position": {
          "x": -1641,
          "y": 837.5
        },
        "size": {
          "width": 255,
          "height": 102
        },
        "angle": 0,
        "linkable": false,
        "id": "8ce0d8b3-cea2-451c-9fbc-20c3f24cba17",
        "z": 2025,
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
          "x": -1003.9874954223633,
          "y": 1184
        },
        "size": {
          "width": 180,
          "height": 99
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "960aca79-73f8-49ef-9082-8e0a5476006a",
        "z": 2026,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "embeds": [
          "82af32fd-d259-4aae-83c5-10d1013fe562"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_ENTER_INCREASING",
            "fill": "#555555",
            "fontSize": 12
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": -1590.012565612793,
          "y": 1091.5
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
        "z": 2027,
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
        "embeds": [
          "5b10ecf3-4e2f-41ec-a020-64e6632fdafa"
        ],
        "markup": "\n    <g class=\"scalable default-outline\" stroke-linejoin=\"round\">\n      <circle cx=\"50\" cy=\"50\" r=\"50\" fill=\"#000000\"/>\n      <text font-family=\"FontAwesome\" font-size=\"13\" x=\"-5\" y=\"0\" opacity=\"0\" fill=\"#00ff00\" text=\"\"/>\n    </g>\n  ",
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
          "x": -1590.012565612793,
          "y": 1106.5
        },
        "id": "5b10ecf3-4e2f-41ec-a020-64e6632fdafa",
        "z": 2037,
        "parent": "1f0aa6a5-30d9-4998-a2e6-3a672b30c89b",
        "attrs": {
          "label": {
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
          }
        ],
        "id": "82af32fd-d259-4aae-83c5-10d1013fe562",
        "z": 2038,
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
          }
        ],
        "id": "41a7cd9d-93d5-4889-a1b5-47a1316c88cf",
        "z": 2038,
        "vertices": [
          {
            "x": -632,
            "y": 1269.5
          },
          {
            "x": -538,
            "y": 1195
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
          }
        ],
        "id": "860db9c2-8a6c-4d14-805a-f186cf191abe",
        "z": 2038,
        "vertices": [
          {
            "x": -644,
            "y": 1233.93
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
          }
        ],
        "id": "c50fc3d3-360c-4b17-9b2b-4746f4c8f8f1",
        "z": 2038,
        "vertices": [
          {
            "x": -868,
            "y": 879.5
          },
          {
            "x": -927.9999694824219,
            "y": 879.5
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
          }
        ],
        "id": "661bfbc3-6a30-4f56-99ab-3111e668e301",
        "z": 2038,
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
          }
        ],
        "id": "116a2cc7-49e4-485e-afb1-c957b391d143",
        "z": 2038,
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
          }
        ],
        "id": "0499e06b-e2bf-4855-bf6b-385dc7e12eb5",
        "z": 2038,
        "vertices": [
          {
            "x": -1144,
            "y": 987.5
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
          }
        ],
        "id": "6c7d9294-cdef-40a7-bbb6-149bf15586d1",
        "z": 2038,
        "vertices": [
          {
            "x": -1179,
            "y": 1233.5
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
          }
        ],
        "id": "e0fdef51-b8ab-4cda-9b35-2ae7e5c09bb5",
        "z": 2038,
        "vertices": [
          {
            "x": -1309,
            "y": 954.9299999999998
          },
          {
            "x": -1224,
            "y": 901
          }
        ],
        "parent": "79e44bfb-bb53-45c3-91a6-6912afff1564",
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