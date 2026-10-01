// Strips a leading "The " so titles sort by their first meaningful word —
// e.g. "The Giver" sorts under G, alongside "Gone Girl", instead of under T.
export function sortableTitle(title: string): string {
  return title.replace(/^the\s+/i, "");
}
