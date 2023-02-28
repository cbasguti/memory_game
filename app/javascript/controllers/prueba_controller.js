import { Controller } from "@hotwired/stimulus"
import { createConsumer} from "@rails/actioncable"

export default class extends Controller {
    connect(){
        createConsumer().subscriptions.create({ channel : "MessagesChannel"},{
            received(data) {
                console.log(data);
            }
        })
    }
}