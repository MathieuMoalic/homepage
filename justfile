release:
    #!/usr/bin/env bash
    
    # Step 1: Increment the minor version in version.toml
    VERSION=$(grep -Eo 'version = "[0-9]+\.[0-9]+\.[0-9]+"' version.toml | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+')
    MAJOR=$(echo "$VERSION" | cut -d. -f1)
    MINOR=$(echo "$VERSION" | cut -d. -f2)
    PATCH=$(echo "$VERSION" | cut -d. -f3)
    NEW_PATCH=$((PATCH + 1))
    NEW_VERSION="$MAJOR.$MINOR.$NEW_PATCH"
    echo "Bumping version from $VERSION to $NEW_VERSION"
    sed -i -E "s/version = \"$VERSION\"/version = \"$NEW_VERSION\"/" version.toml

    # Step 2: Stage and commit the changes
    git add version.toml
    git commit -m "Release of v$NEW_VERSION"

    # Step 3: Tag the commit with the new version
    git tag -a "v$NEW_VERSION" -m "Version v$NEW_VERSION"

    # Step 4: Push the commit and tag to the origin
    git push origin main
    git push origin "v$NEW_VERSION"

    echo "Version bumped to v$NEW_VERSION and pushed with tag."
