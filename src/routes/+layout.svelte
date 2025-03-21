<script lang="ts">
    import "../app.css";
    import {
        Github,
        Linkedin,
        GraduationCap,
        BookMarked,
        Mail,
    } from "lucide-svelte";
    import "../app.css";
</script>

<header>
    <nav class="flex justify-between items-center p-6 bg-gray-800 text-white">
        <h1 class="text-xl font-semibold">Mathieu Moalic</h1>
        <div class="flex space-x-6">
            <a href="/" class="hover:text-white"> Home </a>
            <a href="/publications" class="hover:text-white"> Publications </a>
            <a href="/conferences" class="hover:text-white"> Conferences </a>
            <a href="/projects" class="hover:text-white"> Projects </a>
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
                <a href="mailto:contact@matmoa.xyz" class="hover:text-white"
                    >contact@matmoa.xyz</a
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
