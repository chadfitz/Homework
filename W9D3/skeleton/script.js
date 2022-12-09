document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // document.
  const addToList = (event) => {
    event.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favoriteInputValue = favoriteInput.value;
    favoriteInput.value = "";
    //does this store the value, then clear out the input box?

    const newSFPlace = document.createElement("li");
    newSFPlace.textContent = favoriteInputValue;

    const favoritesList = document.getElementById("sf-places");
    favoritesList.appendChild(newSFPlace);
  }

  const addFavoritePlace = document.querySelector(".favorite-submit");
  addFavoritePlace.addEventListener("click", addToList);



  // adding new photos

  const showPhotoForm = (e) => {
    const photoFormDiv = document.querySelector(".photo-form-container");
    if (photoFormDiv.className === ".photo-form-container"){
      photoFormDiv.className = ".photo-form-container hidden";
    } else {
      photoFormDiv.className = ".photo-form-container";
    }
  }

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);

  const submitPhoto = (event) => {
    event.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newPhoto = document.createElement("img");
    newPhoto.src = photoUrl;

    const newPhotoLi = document.createElement("li");
    newPhotoLi.appendChild(newPhoto);

    const ulDogPhotos = document.querySelector(".dog-photos");
    ulDogPhotos.appendChild(newPhotoLi);
  }

  const submitPhotoButton = document.querySelector(".photo-url-submit");
  submitPhotoButton.addEventListener("click", submitPhoto);
});
