<script lang="ts">
    import "../app.css";
    import {
        Github,
        Linkedin,
        GraduationCap,
        BookMarked,
        Mail,
    } from "lucide-svelte";
    let isOpen = false;
</script>

<header>
    <nav class="bg-gray-800 text-white p-6">
        <div class="flex justify-between items-center">
            <h1 class="text-xl font-semibold">
                <a href="/" class="hover:text-white">Mathieu Moalic</a>
            </h1>

            <!-- Mobile menu toggle -->
            <button
                class="md:hidden"
                on:click={() => (isOpen = !isOpen)}
                aria-label="Toggle menu"
            >
                {#if isOpen}
                    <!-- X icon -->
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-6 w-6"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                    >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M6 18L18 6M6 6l12 12"
                        />
                    </svg>
                {:else}
                    <!-- Hamburger icon -->
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-6 w-6"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                    >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            d="M4 6h16M4 12h16M4 18h16"
                        />
                    </svg>
                {/if}
            </button>

            <!-- Navigation links (desktop) -->
            <div class="hidden md:flex md:space-x-6">
                <a href="/" class="hover:text-white">Home</a>
                <a href="/publications" class="hover:text-white">Publications</a
                >
                <a href="/conferences" class="hover:text-white">Conferences</a>
                <a href="/projects" class="hover:text-white">Projects</a>
            </div>

            <!-- Social icons (desktop) -->
            <div class="hidden md:flex space-x-6">
                <a
                    href="https://github.com/mathieumoalic"
                    target="_blank"
                    aria-label="GitHub"
                    class="hover:text-white"
                >
                    <Github size={24} />
                </a>
                <a
                    href="https://www.linkedin.com/in/mathieu-moalic/"
                    target="_blank"
                    aria-label="LinkedIn"
                    class="hover:text-white"
                >
                    <Linkedin size={24} />
                </a>
                <a
                    href="https://scholar.google.com/citations?user=mc7jgBAAAAAJ&hl=en"
                    target="_blank"
                    aria-label="Google Scholar"
                    class="hover:text-white"
                >
                    <GraduationCap size={24} />
                </a>
                <a
                    href="https://www.researchgate.net/profile/Mathieu-Moalic"
                    target="_blank"
                    aria-label="ResearchGate"
                    class="hover:text-white"
                >
                    <BookMarked size={24} />
                </a>
                <a
                    href="https://orcid.org/0000-0002-4562-1543"
                    target="_blank"
                    aria-label="ORCID"
                    class="hover:text-white"
                >
                    <img
                        src="./ORCID_iD.svg"
                        alt="ORCID"
                        width="24"
                        height="24"
                    />
                </a>
            </div>
        </div>

        <!-- Mobile dropdown menu -->
        {#if isOpen}
            <div class="md:hidden mt-4 flex flex-col space-y-4">
                <a href="/" class="hover:text-white">Home</a>
                <a href="/publications" class="hover:text-white">Publications</a
                >
                <a href="/conferences" class="hover:text-white">Conferences</a>
                <a href="/projects" class="hover:text-white">Projects</a>
                <div class="flex space-x-6 pt-2">
                    <a
                        href="https://github.com/mathieumoalic"
                        target="_blank"
                        aria-label="GitHub"
                        class="hover:text-white"
                    >
                        <Github size={24} />
                    </a>
                    <a
                        href="https://www.linkedin.com/in/mathieu-moalic/"
                        target="_blank"
                        aria-label="LinkedIn"
                        class="hover:text-white"
                    >
                        <Linkedin size={24} />
                    </a>
                    <a
                        href="https://scholar.google.com/citations?user=mc7jgBAAAAAJ&hl=en"
                        target="_blank"
                        aria-label="Google Scholar"
                        class="hover:text-white"
                    >
                        <GraduationCap size={24} />
                    </a>
                    <a
                        href="https://www.researchgate.net/profile/Mathieu-Moalic"
                        target="_blank"
                        aria-label="ResearchGate"
                        class="hover:text-white"
                    >
                        <BookMarked size={24} />
                    </a>
                    <a
                        href="https://orcid.org/0000-0002-4562-1543"
                        target="_blank"
                        aria-label="ORCID"
                        class="hover:text-white"
                    >
                        <img
                            src="./ORCID_iD.svg"
                            alt="ORCID"
                            width="24"
                            height="24"
                        />
                    </a>
                </div>
            </div>
        {/if}
    </nav>
</header>
<main class="text-white flex-1 bg-gray-700">
    <slot></slot>
</main>
<footer class="bg-gray-800 text-gray-300 py-6">
    <div
        class="container mx-auto flex flex-col justify-between items-center px-6"
    >
        <div class="text-center mb-4">
            <p class="text-md mt-2 flex space-x-1">
                <Mail size={24} />
                <a href="mailto:mathieu@matmoa.eu" class="hover:text-white"
                    >mathieu@matmoa.eu</a
                >
            </p>
        </div>
        <div class="flex space-x-6">
            <a
                href="https://github.com/mathieumoalic"
                target="_blank"
                aria-label="GitHub"
                class="hover:text-white"
            >
                <Github size={24} />
            </a>
            <a
                href="https://www.linkedin.com/in/mathieu-moalic/"
                target="_blank"
                aria-label="LinkedIn"
                class="hover:text-white"
            >
                <Linkedin size={24} />
            </a>
            <a
                href="https://scholar.google.com/citations?user=mc7jgBAAAAAJ&hl=en"
                target="_blank"
                aria-label="Google Scholar"
                class="hover:text-white"
            >
                <GraduationCap size={24} />
            </a>
            <a
                href="https://www.researchgate.net/profile/Mathieu-Moalic"
                target="_blank"
                aria-label="ResearchGate"
                class="hover:text-white"
            >
                <BookMarked size={24} />
            </a>
            <a
                href="https://orcid.org/0000-0002-4562-1543"
                target="_blank"
                aria-label="ORCID"
                class="hover:text-white"
            >
                <img src="./ORCID_iD.svg" alt="ORCID" width="24" height="24" />
            </a>
        </div>
    </div>
</footer>
