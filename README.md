# SausageOrNot
![1](https://github.com/abnan/SausageOrNot/blob/master/images/1.png "1")
This project originally started off as a porn filter for unsolicited inapproriate pictures. Since annotating such an imageset would be scarring, I used sausages as an euphemism. In it's current state, it detects the location of (if any) sausages in the picture and blurs out that particular while keeping the remaining of the image intact, leaving it to the users discretion if they do really want to see it. This project was trained using the YOLOv3 architecture.

### Steps on how to use on an Amazon EC2 instance:
1. Clone the repository.
2. Give permissions and execute the script run.sh. This should install docker as well, build the project and run it on port 80. Unfortunately this downloads the default YOLOv3 weights, and not my custom sausage trained weights since GitHub won't allow files larger than 100 MB.
3. Download the custom weights from this link: https://drive.google.com/uc?export=download&confirm=AH2T&id=1cuG7bO0EcWrVnjaEn8ME3nHcUB65xRYg
4. Overwrite the weights in flask_yolo/yolo_v3/yolov3.weights using the weights from the above downloaded link.
5. Test the API with the following command: curl -X POST -F image=@your_image_here.jpg 'http://localhost:80/api/test' --output test_output.png

### Results
Here are some more results:
![2](https://github.com/abnan/SausageOrNot/blob/master/images/2.png "2")
![3](https://github.com/abnan/SausageOrNot/blob/master/images/3.png "3")
![4](https://github.com/abnan/SausageOrNot/blob/master/images/4.png "4")

#### Todo:
- Host yolov3.weights as a direct download file somewhere so that it works with cURL/WGET. Gdrive does not support cURL/WGET.

#### Disclaimer:
The network was trained on about 150 sausage images annotated (somewhat lazily) by my in my free time; it still works quite well, but can  be improved upon.
