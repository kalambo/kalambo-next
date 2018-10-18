[
  [:ul, class: nav group,
    [:li, class: active, [:a, href: "/", Kalambo]],
    [:li, [:a, href: "/vault", Vault]],
    [:li, [:a, href: "/maraca", Maraca]],
    [:li, [:a, href: "/about", About]],
  ],

  [class: container,

    [:h1, Kalambo],
    [:p, "Data done right:"],
    [:ul,
      [:li, "Data storage separate from applications"],
      [:li, "The right data access / control for the right people"],
      [:li, "We don't see / monetise your data"],
    ],

    [:h2, How it works],
    [:p, "Two complementary pieces:"],
    [class: cols group,
      [
        [:h3, [:a, href: "/vault", Vault], style: [textAlign: center]],
      ],
      [
        [:h3, [:a, href: "/maraca", Maraca], style: [textAlign: center]],
      ],
    ],

    [:h3, The technology, style: [textAlign: center]],
    [class: cols group,
      [
        [:ul, style: [background: "#f6f6f6"],
          [:li, "Secure & robust database"],
          [:li, "Flexible data structure and permissions"],
          [:li, "Connects seamlessly to Maraca"],
        ],
      ],
      [
        [:ul, style: [background: "#f6f6f6"],
          [:li, "Simple & powerful data language"],
          [:li, "Perfect for interactive data interfaces"],
          [:li, "Open source ecosystem of free tools"],
        ],
      ],
    ],

    [:h3, Our services, style: [textAlign: center]],
    [class: cols group,
      [
        [:ul, style: [background: "#f6f6f6"],
          [:li, "Hosted database service"],
          [:li, "Setup & customisation"],
          [:li, "Maintenance & support"],
        ],
      ],
      [
        [:ul, style: [background: "#f6f6f6"],
          [:li, "Development of core language"],
          [:li, "Custom application development"],
          [:li, "Support open source community"],
        ],
      ],
    ],

  ],
]