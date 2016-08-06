{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 0.9999999777059552
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
        "type": "basic.code",
        "data": {
          "code": "reg [7:0] rom [0:15];\nreg [7:0] data;\nwire [3:0] addr;\n\n//-- Name of the file with the rom contents\nparameter ROMFILE = \"rom2.list\";\n\nassign addr = {a3,a2,a1,a0};\n\nalways @(negedge clk) begin\n  data <= rom[addr];\nend\n\nassign {d7,d6,d5,d4,d3,d2,d1,d0} = data;\n\ninitial begin\n  $readmemh(ROMFILE, rom);\nend\n",
          "ports": {
            "in": [
              "clk",
              "a0",
              "a1",
              "a2",
              "a3"
            ],
            "out": [
              "d0",
              "d1",
              "d2",
              "d3",
              "d4",
              "d5",
              "d6",
              "d7"
            ]
          }
        },
        "position": {
          "x": 336,
          "y": 104
        }
      },
      {
        "id": "eb3d2bd7-df2d-4642-ae51-e9c519659670",
        "type": "basic.input",
        "data": {
          "label": "clk",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": 56,
          "y": 96
        }
      },
      {
        "id": "c92ed35c-3646-4035-a245-189981cde002",
        "type": "basic.output",
        "data": {
          "label": "d0",
          "pin": {
            "name": "LED0",
            "value": "95"
          }
        },
        "position": {
          "x": 968,
          "y": 88
        }
      },
      {
        "id": "e1ab6945-e32f-4543-8d99-cb2eb8938c8f",
        "type": "basic.output",
        "data": {
          "label": "d1",
          "pin": {
            "name": "LED1",
            "value": "96"
          }
        },
        "position": {
          "x": 968,
          "y": 168
        }
      },
      {
        "id": "b320f43c-eb84-4e7c-91ff-e8431d17ad0c",
        "type": "basic.output",
        "data": {
          "label": "d2",
          "pin": {
            "name": "LED2",
            "value": "97"
          }
        },
        "position": {
          "x": 968,
          "y": 248
        }
      },
      {
        "id": "cfa49055-27cf-4d75-a5af-2601e50eb073",
        "type": "basic.output",
        "data": {
          "label": "d3",
          "pin": {
            "name": "LED3",
            "value": "98"
          }
        },
        "position": {
          "x": 968,
          "y": 328
        }
      },
      {
        "id": "2ce211e9-8e62-4de0-8ae8-78463c6fc07d",
        "type": "basic.output",
        "data": {
          "label": "d4",
          "pin": {
            "name": "LED4",
            "value": "99"
          }
        },
        "position": {
          "x": 968,
          "y": 408
        }
      },
      {
        "id": "c2e989a1-26a1-470d-a8d1-760ec0b15287",
        "type": "basic.output",
        "data": {
          "label": "d5",
          "pin": {
            "name": "LED5",
            "value": "101"
          }
        },
        "position": {
          "x": 968,
          "y": 480
        }
      },
      {
        "id": "3dfee49f-5909-4173-9df5-afb32991c989",
        "type": "basic.output",
        "data": {
          "label": "d6",
          "pin": {
            "name": "LED6",
            "value": "102"
          }
        },
        "position": {
          "x": 968,
          "y": 560
        }
      },
      {
        "id": "a0c38447-6714-4160-874c-ff0eb1650304",
        "type": "basic.output",
        "data": {
          "label": "d7",
          "pin": {
            "name": "LED7",
            "value": "104"
          }
        },
        "position": {
          "x": 968,
          "y": 632
        }
      },
      {
        "id": "9e04ac85-d215-4016-99c0-4a81d6721c2d",
        "type": "basic.input",
        "data": {
          "label": "a0",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 56,
          "y": 176
        }
      },
      {
        "id": "670e1174-bcea-4679-9bc0-8c6a169ca671",
        "type": "basic.input",
        "data": {
          "label": "a1",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 56,
          "y": 248
        }
      },
      {
        "id": "0c8f53ee-57cc-4be6-973a-acd99bad3c2d",
        "type": "basic.input",
        "data": {
          "label": "a2",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 56,
          "y": 320
        }
      },
      {
        "id": "52aa1c6c-52e4-4bf7-9c60-a50b429c3096",
        "type": "basic.input",
        "data": {
          "label": "a3",
          "pin": {
            "name": "",
            "value": 0
          }
        },
        "position": {
          "x": 56,
          "y": 392
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "eb3d2bd7-df2d-4642-ae51-e9c519659670",
          "port": "out"
        },
        "target": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "clk"
        }
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d0"
        },
        "target": {
          "block": "c92ed35c-3646-4035-a245-189981cde002",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d1"
        },
        "target": {
          "block": "e1ab6945-e32f-4543-8d99-cb2eb8938c8f",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d2"
        },
        "target": {
          "block": "b320f43c-eb84-4e7c-91ff-e8431d17ad0c",
          "port": "in"
        },
        "vertices": [
          {
            "x": 920,
            "y": 232
          }
        ]
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d3"
        },
        "target": {
          "block": "cfa49055-27cf-4d75-a5af-2601e50eb073",
          "port": "in"
        },
        "vertices": [
          {
            "x": 912,
            "y": 312
          }
        ]
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d4"
        },
        "target": {
          "block": "2ce211e9-8e62-4de0-8ae8-78463c6fc07d",
          "port": "in"
        },
        "vertices": [
          {
            "x": 904,
            "y": 392
          }
        ]
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d5"
        },
        "target": {
          "block": "c2e989a1-26a1-470d-a8d1-760ec0b15287",
          "port": "in"
        },
        "vertices": [
          {
            "x": 896,
            "y": 472
          }
        ]
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d6"
        },
        "target": {
          "block": "3dfee49f-5909-4173-9df5-afb32991c989",
          "port": "in"
        },
        "vertices": [
          {
            "x": 888,
            "y": 536
          }
        ]
      },
      {
        "source": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "d7"
        },
        "target": {
          "block": "a0c38447-6714-4160-874c-ff0eb1650304",
          "port": "in"
        },
        "vertices": [
          {
            "x": 880,
            "y": 576
          }
        ]
      },
      {
        "source": {
          "block": "9e04ac85-d215-4016-99c0-4a81d6721c2d",
          "port": "out"
        },
        "target": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "a0"
        },
        "vertices": [
          {
            "x": 224,
            "y": 192
          }
        ]
      },
      {
        "source": {
          "block": "670e1174-bcea-4679-9bc0-8c6a169ca671",
          "port": "out"
        },
        "target": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "a1"
        },
        "vertices": [
          {
            "x": 232,
            "y": 248
          }
        ]
      },
      {
        "source": {
          "block": "0c8f53ee-57cc-4be6-973a-acd99bad3c2d",
          "port": "out"
        },
        "target": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "a2"
        },
        "vertices": [
          {
            "x": 256,
            "y": 296
          }
        ]
      },
      {
        "source": {
          "block": "52aa1c6c-52e4-4bf7-9c60-a50b429c3096",
          "port": "out"
        },
        "target": {
          "block": "738b9f77-4d69-4d79-9aa4-cf6f6367fe4d",
          "port": "a3"
        }
      }
    ]
  },
  "deps": {}
}