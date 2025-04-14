<script lang="ts">
    import { ExternalLink } from "lucide-svelte";
    const myName = "M Moalic"; // Your name as it appears in the authors list

    function highlightName(authors: string) {
        return authors.replace(myName, `<strong>${myName}</strong>`);
    }
    const publications = [
        {
            title: "Stabilization and racetrack application of asymmetric Néel skyrmions in hybrid nanostructures",
            authors:
                "M Zelent, M Moalic, M Mruczkiewicz, X Li, Y Zhou, M Krawczyk",
            journal: "Scientific Reports 13 (1), 13572",
            year: 2023,
            link: "https://www.nature.com/articles/s41598-023-40236-z.pdf",
        },
        {
            title: "Spin-wave spectra in antidot lattice with inhomogeneous perpendicular magnetic anisotropy",
            authors: "M Moalic, M Krawczyk, M Zelent",
            journal: "Journal of Applied Physics 132 (21), 213901",
            year: 2022,
            link: "https://arxiv.org/pdf/2211.11002",
        },
        {
            title: "Tunability of spin-wave spectra in a 2D triangular shaped magnonic fractals",
            authors: "R Mehta, M Moalic, M Krawczyk, S Saha",
            journal: "Journal of Physics: Condensed Matter 35 (32), 324002",
            year: 2023,
            link: "https://iopscience.iop.org/article/10.1088/1361-648X/acd15f/pdf",
        },
        {
            title: "The role of non-uniform magnetization texture for magnon-magnon coupling in an antidot lattice",
            authors: "M Moalic, M Zelent, K Szulc, M Krawczyk",
            journal: "Scientific Reports 14 (1), 11501",
            year: 2024,
            link: "https://www.nature.com/articles/s41598-024-61246-5.pdf",
        },
        {
            title: "Scattering of spin waves in a multimode waveguide under the influence of confined magnetic skyrmion",
            authors: "KA Kotus, M Moalic, M Zelent, M Krawczyk, P Gruszecki",
            journal: "APL Materials 10 (9), 091101",
            year: 2022,
            link: "https://pubs.aip.org/aip/apm/article-pdf/doi/10.1063/5.0100594/16491235/091101_1_online.pdf",
        },
        {
            title: "Control of vortex chirality in a symmetric ferromagnetic ring using a ferromagnetic nanoelement",
            authors:
                "U Makartsou, M Moalic, M Zelent, M Mruczkiewicz, M Krawczyk",
            journal: "Nanoscale 15 (31), 13094-13101",
            year: 2023,
            link: "https://pubs.rsc.org/en/content/articlepdf/2023/nr/d3nr00582h",
        },
        {
            title: "Unidirectional spin wave emission by traveling pair of magnetic field profiles",
            authors: "G Philippe, M Moalic, JW Kłos",
            journal: "Journal of Magnetism and Magnetic Materials 587, 171359",
            year: 2023,
            link: "https://www.sciencedirect.com/science/article/pii/S0304885323010090/pdfft?md5=438f14ca217e6a878368a2a5fbd01a4d&pid=1-s2.0-S0304885323010090-main.pdf",
        },
        {
            title: "Spin dynamics in patterned magnetic multilayers with perpendicular magnetic anisotropy",
            authors:
                "M Zelent, P Gruszecki, M Moalic, O Hellwig, A Barman, M Krawczyk",
            journal: "Solid State Physics 73, 51",
            year: 2022,
            link: "https://www.sciencedirect.com/science/article/abs/pii/S0081194722000029",
        },
        {
            title: "Angle-dependent resonant dynamics of stripes and skyrmions in Re/Co/Pt multilayers",
            authors:
                "SK Jena, K Lenz, M Zelent, M Moalic, A Lynnyk, A Pietruczik, P Aleszkiewicz, E Milińska, J Lindner, A Wawro",
            journal: "arXiv preprint arXiv:2501.06865",
            year: 2025,
            link: "https://arxiv.org/pdf/2501.06865",
        },
        {
            title: "Enhancement of dynamical coupling in artificial spin-ice systems by incorporating perpendicularly magnetized ferromagnetic matrix",
            authors: "SS Kunnath, M Zelent, M Moalic, M Krawczyk",
            journal: "Small Structures, 2400627",
            year: 2024,
            link: "https://onlinelibrary.wiley.com/doi/pdf/10.1002/sstr.202400627",
        },
    ];
</script>

<section class="bg-gray-700 text-white py-16 px-6">
    <div class="max-w-4xl mx-auto">
        <h2 class="text-4xl font-bold text-center mb-8">Publications 📖</h2>

        <p class="text-center text-lg text-gray-300 mb-6">
            Adam Mickiewicz University, Institute of Spintronic and Quantum
            Information, Poznań, Poland
        </p>

        <div class="overflow-hidden rounded-lg shadow-lg">
            <div>
                {#each publications as pub}
                    <div
                        class="border-b border-gray-700 bg-gray-800 hover:bg-gray-600 transition duration-200 p-6 relative flex flex-col"
                    >
                        <div
                            class="pr-12 text-lg font-semibold text-gray-100 break-words"
                        >
                            {pub.title}
                        </div>
                        <div class="text-sm text-gray-400 mt-1">
                            {@html highlightName(pub.authors)}
                        </div>
                        <div
                            class="text-sm text-gray-500 italic mt-1 flex justify-between items-center"
                        >
                            <span>{pub.journal}</span>
                            <span class="text-gray-400">{pub.year}</span>
                        </div>
                        <button
                            class="absolute top-4 right-4 bg-gray-700 hover:bg-gray-600 text-gray-300 border border-gray-500 rounded-lg p-2 transition"
                            on:click={() => window.open(pub.link, "_blank")}
                        >
                            <ExternalLink class="w-5 h-5 text-gray-300" />
                        </button>
                    </div>
                {/each}
            </div>
        </div>
    </div>
</section>
