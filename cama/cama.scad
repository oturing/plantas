//$vpr = [60,0,135];
//$vpt = [50,0,0];

// cama gaveteiro
difference () {
    translate([25, 0, 0])
        cube([188, 92, 38.5]);

    // caixa para o colchão
    translate([24, 1, 33])
        cube([192, 90, 40]);

    // gaveta direita
    translate([50, 2, 8])
        cube([61.2, 91, 20]);

    // gaveta esquerda
    translate([133.2, 2, 8])
        cube([61.2, 91, 20]);
}


// baú cabeceira
color([0, 1, 0])
    difference () {
        cube([25, 92, 48]);
        translate([1, 1, 1])
            cube([23, 90, 48]);
    }

// tampa 1 (mais aberta)
color([0, 0, 1])
    translate([1,0,48])
        rotate([0, -75, 0])
            difference() {
                cube([25,46,1]);
                translate([20,22,-1])
                    cylinder($fn=12, 3, 2, 2);
            }

// tampa 2
color([0, 0, 1])
    translate([1,46,48])
        rotate([0, -45, 0])
            difference() {
                cube([25,46,1]);
                    translate([20,22,-1])
                    cylinder($fn=12, 3, 2, 2);
            }                

// peseira: retângulo largura
color([1, 0, 0])
    translate([213, 0, 0])
        cube([1,92, 60]);

// peseira: retângulo altura
color([1, 0, 0])
    translate([213, 5, 0])
        cube([1,82, 65]);

// peseira: canto 1
color([1, 0, 0])
    rotate([0,90,0])
        translate([-60,5,213])
            cylinder(1, 5, 5);

// peseira: canto 1
color([1, 0, 0])
    rotate([0,90,0])
        translate([-60,87,213])
            cylinder(1, 5, 5);
// paredes
union() {
    // parede interna do nicho
    color([1, 1, 1, 0.5])
        translate([-2,95,0])
            cube([48, 10, 200]);

    // rodapé interno do nicho
    color([1, 1, 1])
        translate([0, 93, 0])
            cube([46, 2,8]);

    color([1, 1, 1])
        translate([46, 93, 0])
            cube([2, 14, 8]);

    color([1, 1, 1])
        translate([-12, 105, 0])
            cube([58, 2, 8]);

    // parede do fundo
    color([1, 1, 1, 0.5])
        translate([-12,-12,0])
            cube([10, 117, 200]);

    // rodapé do fundo
    color([1, 1, 1])
        translate([-2, 0, 0])
            cube([2, 93,8]);
            
    // parede externa
    color([1, 1, 1, 0.5])
        translate([-2,-12,0])
            cube([251, 10, 200]);

    // rodapé externo
    color([1, 1, 1])
        translate([0,-2, 0])
            cube([249, 2, 8]);
}