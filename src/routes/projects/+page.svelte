<script lang="ts">
    import ProjectCard from "$components/ProjectCard.svelte";
</script>

<section
    class="bg-gray-700 flex flex-col md:flex-row-reverse items-center justify-center text-justify py-16 px-6"
>
    <div class="max-w-2xl md:mr-10">
        <h2 class="text-4xl font-bold">
            Projects <span class="inline-block">🚀</span>
        </h2>

        <p class="mt-4 text-lg">
            I like to tinker and build things. I am passionate about open-source
            software and I enjoy contributing to projects that I use. I also
            really care about privacy so I try to self-host as much as possible,
            which is why I have close to 40 Podman containers running on my
            homeserver. Here are some of the projects I am currently working on:
        </p>
    </div>
</section>

<ProjectCard
    title="Amumax"
    icon="🧲"
    github="https://github.com/MathieuMoalic/amumax"
    image="./projects/amumax.avif"
    description="Fork of mumax3 aimed at enhancing Python workflow integration. Includes improved WebUI and uses zarr for storing and accessing data, making output processing significantly more efficient."
    reverse={true}
/>

<ProjectCard
    title="Blaz"
    icon="🥦"
    github="https://github.com/MathieuMoalic/blaz"
    image="./projects/boued.avif"
    description="A self-hosted recipe and shopping list manager with a Rust backend and Flutter frontend. It supports smart ingredient parsing, recipe import, shopping-list workflows, and cross-platform use through a web interface and Android app."
    reverse={false}
/>

<ProjectCard
    title="Mont"
    icon="💪"
    github="https://github.com/MathieuMoalic/mont"
    image="./projects/pleustradenn.avif"
    description="A personal fitness tracking app built with a Rust/Axum/SQLite backend and Flutter frontend. It supports workout logging, body-weight tracking, and run import/visualization with route maps, heart-rate, pace, elevation, and trend charts."
    reverse={true}
/>

<ProjectCard
    title="Custom Keyboard"
    icon="⌨️"
    github="https://github.com/mathieumoalic/qmk"
    image="./projects/split_keyboard.avif"
    description="I built a custom split keyboard from scratch. It uses QMK with several custom keymaps and layers for English, French, and Polish. I named it 'Clavarté', a portmanteau of 'clavier' and 'écarté' which mean 'keyboard' and 'split' in French. You can find my QMK keymaps on GitHub."
    reverse={false}
/>

<ProjectCard
    title="NixOS config"
    icon="🐧"
    github="https://github.com/mathieumoalic/nixconfig"
    image="./projects/nixconfig.avif"
    description="I have been using NixOS and HomeManager for a few years now. You can find my nix configuration that I use on my laptop, workstation, homeserver, GPU nodes, and other machines."
    reverse={true}
/>
