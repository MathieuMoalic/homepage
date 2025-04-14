release:
    #!/usr/bin/env bash
    
    # Step 1: Increment the minor version in version.toml
    VERSION=$(grep -Eo '"version": "[0-9]+\.[0-9]+\.[0-9]+"' package.json | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+')
    MAJOR=$(echo "$VERSION" | cut -d. -f1)
    MINOR=$(echo "$VERSION" | cut -d. -f2)
    PATCH=$(echo "$VERSION" | cut -d. -f3)
    NEW_PATCH=$((PATCH + 1))
    NEW_VERSION="$MAJOR.$MINOR.$NEW_PATCH"
    echo "Bumping version from $VERSION to $NEW_VERSION"
    sed -i -E "s/\"version\": \"$VERSION\"/\"version\": \"$NEW_VERSION\"/" package.json

    # Step 2: Stage and commit the changes
    git add package.json
    git commit -m "Release of v$NEW_VERSION"

    # Step 3: Tag the commit with the new version
    git tag -a "v$NEW_VERSION" -m "Version v$NEW_VERSION"

    # Step 4: Push the commit and tag to the origin
    git push origin main
    git push origin "v$NEW_VERSION"

    # Step 5: Print the new version
    ssh homeserver "sh -c 'sed -i \"s/ghcr.io\/mathieumoalic\/homepage:[0-9]\+\.[0-9]\+\.[0-9]\+/ghcr.io\/mathieumoalic\/homepage:$NEW_VERSION/\" podman/justfile'"

    # Step 6: Wait 5 minutes
    sleep 300

    # Step 7: SSH into the server and run the release script
    ssh homeserver "just podman/homepage'"

    echo "Version bumped to v$NEW_VERSION and pushed with tag."
