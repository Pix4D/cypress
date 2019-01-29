FROM cypress/browsers:chrome69

RUN yarn global add \
    @cypress/webpack-preprocessor \
    cypress \
    ts-loader \
    tsconfig-paths-webpack-plugin \
    typescript \
    webpack \
    --ignore-engines

RUN yarn add ts-loader

# This image uses the root user. You might want to switch to non-root user when
# running this container for security.
# USER test