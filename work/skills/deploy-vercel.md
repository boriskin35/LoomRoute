# Skill: Deploy to Vercel

## Purpose
Safely deploy static and serverless web applications to Vercel.

## Algorithm
1. Verify that `.env` keys and environment variables are configured in the Vercel dashboard UI (never commit them in code).
2. Build the project locally to ensure no errors: `npm run build` or `vercel build`.
3. Review changes and show a summary/diff of files to the user.
4. Obtain explicit user confirmation to deploy.
5. Execute the production deployment: `vercel --prod`.
6. Verify the deployment status and check that the live URL opens correctly.
