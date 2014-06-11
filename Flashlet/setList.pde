void cardSets(){
 File dir = new File("/cardSets");
  File[] directoryListing = dir.listFiles();
  if (directoryListing != null) {
    for (File child : directoryListing) {
      System.out.println(child.getName());
    }
  }
}
