// Strips a leading article ("The ", "A ", "An ") so titles sort by their
// first meaningful word — e.g. "The Giver" sorts under G, alongside "Gone
// Girl", and "A Simple Favor" sorts under S, instead of under T or A.
export function sortableTitle(title: string): string {
  return title.replace(/^(the|an?)\s+/i, "");
}
