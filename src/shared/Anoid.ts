interface ECS {
	Walk: any;
}

class Entity implements ECS {
	id = 1;
	Walk() {
		print("WE are WALKING now!", this.id);
	}
}

export class Anoid extends Entity {
	name: string;
	constructor(name: string) {
		super();
		this.name = name;
	}
}
