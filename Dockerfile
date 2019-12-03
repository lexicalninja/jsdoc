FROM node:10-slim


LABEL version="1.0.0"
LABEL respository="https://github.com/lexicalninja/jsdoc"
LABEL homepage="https://github.com/lexicalninja/jsdoc"
LABEL maintainer="Pasquale <lexicalninja@github.com>"
LABEL com.github.actions.name="GitHub Action for JSDoc"
LABEL com.github.actions.description="JSDoc wrapper for GitHub Actions to run CLI commands"
LABEL com.github.actions.icon="bug"
LABEL com.github.actions.color="blue"

RUN npm i -g jsdoc

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
