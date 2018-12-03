Class {
	#name : #ERComponentFooter,
	#superclass : #WAComponent,
	#category : #'ESUGApp-Components'
}

{ #category : #rendering }
ERComponentFooter >> renderContentOn: html [
	html html: '<footer class="footer">
    <div class="container">
      <nav class="float-left">
        <ul>
          <li>
            <a href="http://Semantics.bo">Semantics</a>
          </li>
        </ul>
      </nav>
      <div class="copyright float-right">
        &copy;
        <script>
          document.write(new Date().getFullYear())
        </script><i class="material-icons">apps</i> by Semantics
      </div>
    </div>
  </footer>'
]
