Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading',
  notFoundTemplate: 'notFoundPage',
  # waitOn: ->
  #   [
  #     Meteor.subscribe 'users'
  #   ]

Router.map () ->
  @route 'home',
    path: '/'

    # waitOn: ->
    #   [
    #     Meteor.subscribe('users')
    #     Meteor.subscribe('instruments')
    #     Meteor.subscribe('instrumentList')
    #     Meteor.subscribe('chatrooms')
    #   ]

  # @route 'search',
  #   path: 'musicians'
  #   waitOn: ->
  #     [
  #       Meteor.subscribe('users')
  #       Meteor.subscribe('instruments')
  #       Meteor.subscribe('instrumentList')
  #       Meteor.subscribe('chatrooms')

  #     ]


  @route "companySite",
    path: "/companySite/:_id"
    # waitOn: ->
    #   [
    #     Meteor.subscribe("users", @params._id)
    #     Meteor.subscribe("todos", @params._id)
    #     Meteor.subscribe("stuffs")
    #   ]

    data: ->
      Brands.findOne @params._id


  # @route 'edit_form',
  #   path: 'edit_profile'
  #   waitOn: ->
  #     [
  #       Meteor.subscribe('instruments')
  #       Meteor.subscribe('instrumentList')
  #     ]
  #   data: ->
  #     Meteor.user()


  # @route 'info',
  #   path: 'info'
  #   waitOn: ->
  #     [
  #       Meteor.subscribe('users')
  #       Meteor.subscribe('instruments')
  #       Meteor.subscribe('instrumentList')

  #       Meteor.subscribe('chatrooms')
  #     ]

  # @route 'shoutOuts',
  #   path: 'shoutOuts'
  #   waitOn: ->
  #     [
  #       Meteor.subscribe('users')
  #       Meteor.subscribe('instruments')
  #       Meteor.subscribe('instrumentList')

  #       Meteor.subscribe('chatrooms')
  #       Meteor.subscribe('shoutouts')
  #     ]

  # @route 'track',
  #   path: 'shoutOuts'
  #   waitOn: ->
  #     [
  #       Meteor.subscribe('users')
  #       Meteor.subscribe('instruments')
  #       Meteor.subscribe('instrumentList')

  #       Meteor.subscribe('chatrooms')
  #       Meteor.subscribe('shoutouts')
  #     ]



  # @route 'notFound',
  #   path: '*'
  #   where: 'server'
  #   action: ->
  #     [
  #       @response.statusCode = 404
  #       @response.end Handlebars.templates['404']()
  #     ]
Router.onBeforeAction("loading")


