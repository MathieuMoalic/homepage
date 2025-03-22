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
            really care about privacy so I try to self-host as much as possible
            which is why I have close to 40 podman containers running on my
            homeserver. Here are some of the projects I am currently working on:
        </p>
    </div>
</section>
<ProjectCard
    title="Amumax"
    icon="🧲"
    github="https://github.com/MathieuMoalic/amumax"
    image="https://raw.githubusercontent.com/MathieuMoalic/amumax/refs/heads/main/screenshots/1.png"
    description="Fork of mumax3 aimed at enhancing Python workflow integration. Includes improved WebUI and uses zarr for storing and accessing data, making output processing significantly more efficient."
    reverse={true}
/>

<ProjectCard
    title="Boued"
    icon="🥦"
    github="https://github.com/MathieuMoalic/boued"
    image="https://raw.githubusercontent.com/MathieuMoalic/boued/refs/heads/main/screenshots.png"
    description="I wasn't happy with existing grocery list apps, so I built my own. A simple, self-hostable web app to manage groceries and shopping lists, built with a FastAPI backend and a SvelteKit frontend."
    reverse={false}
/>

<ProjectCard
    title="Pleustradenn"
    icon="💪"
    github="https://github.com/MathieuMoalic/pleustradenn"
    image="https://raw.githubusercontent.com/MathieuMoalic/pleustradenn/refs/heads/main/screenshots.png"
    description="I wasn't happy with existing workout tracking apps, so I built my own. A full-stack web app to track workout sessions, exercises, and progress — built with FastAPI + SQLModel backend and SvelteKit frontend."
    reverse={true}
/>

<ProjectCard
    title="Custom Keyboard"
    icon="⌨️"
    github=""
    image="./split_keyboard.jpg"
    description="I built a custom split keyboard from scratch. It uses QMK with several custom keymaps and layers for English, French, and Polish. I named it 'Clavarté', a portmanteau of 'clavier' and 'écarté' which mean 'keyboard' and 'split' in French."
    reverse={false}
/>
