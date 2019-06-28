FROM cypress/browsers:node10.11.0-chrome75

# In order to be able to just run cypress (i.e. just `cypress` and not `yarn cypress`).
# We need to run cypress globally otherwise we get the error 'Could not find any tests to run.'
RUN yarn global add \
    cypress

# This image uses the root user. You might want to switch to non-root user when
# running this container for security.
# USER test