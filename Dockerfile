FROM cypress/browsers:chrome69

# In order to be able to just run cypress (i.e. just `cypress` and not `yarn cypress`).
# We need to run cypress globally otherwise we get the error 'Could not find any tests to run.'
RUN yarn global add \
    cypress

# Need to install dependencies local in order to be found. Cypress is needed to find its typings.
# Ignore version-check of engines since some dependencies require an older version of node.
RUN yarn add \
    @cypress/webpack-preprocessor \
    @types/mocha \
    cypress \
    ts-loader \
    tsconfig-paths-webpack-plugin \
    typescript \
    webpack \
    --ignore-engines

# This image uses the root user. You might want to switch to non-root user when
# running this container for security.
# USER test