use test;

create table grupos (id int(11) not null auto_increment,
					nome varchar(50) not null,
                    
                    primary key (id)
);

create table usuarios (id int(11) not null auto_increment,
					nome varchar(50) not null,
                    login varchar(50) not null unique,
                    password varchar(50) not null,
                    
                    primary key (id)
);

create table usuarios_grupos (id int(11) not null auto_increment,
							usuario_id int(11) not null,
                            grupo_id int(11) not null,
                            
                            primary key (id),
                            foreign key (usuario_id) references usuarios(id),
                            foreign key (grupo_id) references grupos(id)
);

