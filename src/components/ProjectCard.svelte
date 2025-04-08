<script lang="ts">
    import { Github } from "lucide-svelte";
    export let title: string;
    export let icon: string;
    export let description: string;
    export let github: string;
    export let image: string;
    export let reverse: boolean = false;
</script>

<section class={`bg-gray-${reverse ? "800" : "700"} py-16 px-6`}>
    <div class="max-w-4xl mx-auto">
        <div
            class={`flex flex-col ${reverse ? "md:flex-row-reverse" : "md:flex-row"} items-center justify-center text-justify gap-10`}
        >
            <div class="max-w-2xl md:mr-10">
                <div class="flex items-center justify-between">
                    <h2 class="text-4xl font-bold flex items-center gap-2">
                        {title} <span>{icon}</span>
                    </h2>
                    {#if github}
                        <a
                            class="bg-gray-700 hover:bg-gray-600 text-gray-300 border border-gray-500 rounded-lg p-2 transition"
                            href={github}
                            target="_blank"
                            rel="noopener noreferrer"
                        >
                            <Github class="w-5 h-5 text-gray-300" />
                        </a>
                    {/if}
                </div>
                <p class="mt-4 text-lg">{description}</p>
            </div>
            <div
                class="flex justify-center md:justify-end mb-6 md:mb-0 shrink-0"
            >
                <a href={image} target="_blank" rel="noopener noreferrer">
                    <img
                        alt={title.toLowerCase()}
                        src={image}
                        class="w-[400px] h-auto border-4 border-gray-500 object-contain"
                    />
                </a>
            </div>
        </div>
    </div>
</section>
