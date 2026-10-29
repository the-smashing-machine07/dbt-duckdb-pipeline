SELECT
    job_location,
    COUNT(*) as postings
FROM
    {{ ref('job_postings') }}
GROUP BY
    job_location
ORDER BY
    postings DESC