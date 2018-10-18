[
  [:ul, class: nav group,
    [:li, [:a, href: "/", Kalambo]],
    [:li, [:a, href: "/vault", Vault]],
    [:li, class: active, [:a, href: "/maraca", Maraca]],
    [:li, [:a, href: "/about", About]],
  ],

  [class: container,

    [:h1, Maraca],
    [:ul,
      [:li, "Simple & powerful data language"],
      [:li, "Perfect for interactive data interfaces"],
      [:li, "Open source ecosystem of free tools"],
    ],

    [:h2, Our services],
    [:ul,
      [:li, "Development of core language"],
      [:li, "Custom application development"],
      [:li, "Support open source community"],
    ],

    [:h2, How it works],
    [:ul,
      [:li, "Data is made up of values, grouped into tables"],
      [:li, "Tables are visualised in lists, graphs, maps etc"],
      [:li, "Apply custom filters, sorts, formulae and more"],
    ],

    [:h2, Basic syntax],

    [:h3, Values],
    [class: cols group,
      [[:ul, [:li, "Word made of letters and numbers"]]],
      [[class: code group,
        [:pre, "
          Hello
          a1
          X Y Z
          option 5
          First name
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Decimal numbers"]]],
      [[class: code group,
        [:pre, "
          12.34
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Negative values"]]],
      [[class: code group,
        [:pre, "
          -1
          -Hello
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Extra spaces are ignored"]]],
      [[class: code group,
        [:pre, "
          Hello   123
        "],
        [:pre, "
          Hello 123
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Multi-value (used for sorting)"]]],
      [[class: code group,
        [:pre, "
          Hello | 123
        "],
        [:pre, "
          \"Hello|123\"
        "],
      ]],
    ],

    [:h3, Quote values],
    [class: cols group,
      [[:ul, [:li, "Characters other than letters or numbers"]]],
      [[class: code group,
        [:pre, "
          \"£5\"
          \"Let's go!\"
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Extra spaces"]]],
      [[class: code group,
        [:pre, "
          \"Hello   123\"
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "The empty value, nil"]]],
      [[class: code group,
        [:pre, "
          \"\"
        "],
      ]],
    ],

    [:h3, Data values],
    [class: cols group,
      [[:ul, [:li, "Dates"]]],
      [[class: code group,
        [:pre, "
          @now
          @tomorrow
          @\"10/05/80\"
        "],
        [:pre, "
          \"2018-10-18T20:19:51.515Z\"
          \"2018-10-19T11:00:00.000Z\"
          \"1980-10-05T11:00:00.000Z\"
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Locations (in progress)"]]],
      [[class: code group,
        [:pre, "
          @@here
          @@london
        "],
        [:pre, "
          ...
          ...
        "],
      ]],
    ],

    [:h3, Arithmetic],
    [class: cols group,
      [[:ul, [:li, "Addition, subtraction, multiplication, division"]]],
      [[class: code group,
        [:pre, "
          1 + 2
          5 - 1
          3 * 4
          6 / 3
        "],
        [:pre, "
          3
          4
          12
          2
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Powers"]]],
      [[class: code group,
        [:pre, "
          2 ^ 3
        "],
        [:pre, "
          8
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Modulo (remainder after division)"]]],
      [[class: code group,
        [:pre, "
          10 % 3
        "],
        [:pre, "
          1
        "],
      ]],
    ],

    [:h3, "True / False"],
    [class: cols group,
      [[:ul, [:li, "Equal"]]],
      [[class: code group,
        [:pre, "
          2 = 6
        "],
        [:pre, "
          false
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Less than (or equal), greater than (or equal)"]]],
      [[class: code group,
        [:pre, "
          5 < 3
          5 <= 5
          8 > 2
          1 >= 3
        "],
        [:pre, "
          false
          true
          true
          false
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Not equal"]]],
      [[class: code group,
        [:pre, "
          8 != 2
        "],
        [:pre, "
          true
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Not"]]],
      [[class: code group,
        [:pre, "
          !(3 < 5)
        "],
        [:pre, "
          false
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "And: (all items true)"]]],
      [[class: code group,
        [:pre, "
          (1 = 2, 3 < 4, 5 = 5)
        "],
        [:pre, "
          (false, true, true) => false
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Or: {any item true}"]]],
      [[class: code group,
        [:pre, "
          {1 = 2, 3 < 4, 5 = 5}
        "],
        [:pre, "
          {false, true, true} => true
        "],
      ]],
    ],

    [:h3, Variables],
    [class: cols group,
      [[:ul, [:li, "Access variables with '?'"]]],
      [:p]
    ],
    [class: cols group,
      [[:ul, [:li, "In # filter use directly for row number"]]],
      [[class: code group,
        [:pre, "
          ?
        "],
        [:pre, "
          10
        "],
      ]],
    ],
    [class: cols group,
      [[:ul, [:li, "Everywhere else use with field names"]]],
      [[class: code group,
        [:pre, "
          First name?
        "],
        [:pre, "
          Hannah
        "],
      ]],
    ],

    [:h2, Demo],
    [style: [background: "#f9f9f9", padding: 15px 30px, borderRadius: 3px],
      {
        fields: [First name, Last name, DOB, Score 1, Score 2],
        filter: * & "DOB? < @(15 years ago)",
        sort: * & "Last name? | First name?",
        limit: * & "5 < ?, ? <= 10",
        formula: * & "(Score 1? + Score 2?) / 2",

        [style: [margin: "0 -10px"],
          [:table, class: table,
            [:thead,
              [:tr,
                [:th, colSpan: #"x => x.length" (fields?) + 1,
                  [style: [margin: "0 -10px"],
                    [:table,
                      [:tbody,
                        [:tr,
                          [:td, "Filter:", style: [width: 100px]],
                          [:td,
                            [:input,
                              placeholder: "Enter filter",
                              value: filter?,
                            ],
                          ],
                        ],
                        [:tr,
                          [:td, "Sort:"],
                          [:td,
                            [:input,
                              placeholder: "Enter sort",
                              value: sort?,
                            ],
                          ],
                        ],
                        [:tr,
                          [:td, "# Filter:"],
                          [:td,
                            [:input,
                              placeholder: "Enter # filter",
                              value: limit?,
                            ],
                          ],
                        ],
                      ],
                    ],
                  ],
                ],
              ],
              [:tr,
                [:th, "#"],
                ...
                fields?
                [f=>> [:th, f?]],
                [:th, style: [minWidth: 300px],
                  [:input,
                    placeholder: Enter formula,
                    value: formula?,
                  ],
                ],
              ]
            ],
            [:tbody,
              ...
              data?
              [v=>> ({{ filter? [:1, x=> "(" .. x? .. ")"], v? }}, v?)]
              [k=> v=> {{ sort?, v? }} | k?: v?]
              [v=>> :: v?]
              [k=> v=> [index: k?, ...v?]]
              [k=> v=> ({{ limit? [:1, x=> "(" .. x? .. ")"], k? }}, v?)]
              [v=>> :: v?]
              [k=> v=>
                [:tr,
                  [:th, index (v?)],
                  ...
                  fields?
                  [f=>> [:td, f? [DOB: #date(f? (v?)), => f? (v?)]]],
                  [:td, {{ formula?, v? }}],
                ]
              ]
            ]
          ]
        ]
      }
    ]

  ],
]