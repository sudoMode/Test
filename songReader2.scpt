JsOsaDAS1.001.00bplist00�Vscripto� v a r   o u t p u t   =   ' ' ; 
 f u n c t i o n   f i n d T r a c k ( m e d i a P l a y e r ) 
 { 
 	 i f   ( A p p l i c a t i o n ( m e d i a P l a y e r ) . r u n n i n g ( ) )   { 
         	 v a r   t e m p   =   ' ' 
 	 	 v a r   t r a c k   =   A p p l i c a t i o n ( m e d i a P l a y e r ) . c u r r e n t T r a c k ; 
         	 v a r   a r t i s t   =   t r a c k . a r t i s t ( ) ; 
         	 v a r   t i t l e   =   t r a c k . n a m e ( ) ; 
 	 	 
 	 	 i f   ( t i t l e . i n c l u d e s ( a r t i s t ) )   { 
 	 	 	 t i t l e   =   t i t l e . r e p l a c e ( a r t i s t ,   ' ' ) ; 
 	 	 } 
 	 	 
 	 	 i f   ( ( a r t i s t   = =   ' U n k n o w n   a r t i s t ' )   | |   ( a r t i s t   = =   ' V a r i o u s   A r t i s t s ' )   | |   a r t i s t . i n c l u d e s ( ' h t t p ' ) ) { 
 	 	 	 t e m p   =   ( `&k   $ { t i t l e } ` ) . s u b s t r ( 0 ,   3 0 ) ; 
 	 	 } e l s e { 
 	 	 	 t e m p   =   ( `&k   $ { a r t i s t }   -   $ { t i t l e } ` ) . s u b s t r ( 0 ,   5 0 ) ; 
 
 	 	 } 
 	 	 
 	 	 i f   ( t e m p . i n c l u d e s ( ' _ ' ) )   { 
 	 	 	 t e m p   =   t e m p . r e p l a c e ( / _ / g ,   '   ' ) 
 	 	 } 
 	 	 
 	 	 i f   ( t e m p . i n c l u d e s ( ' ( m p 3 . p m ) ' ) )   { 
 	 	 	 t e m p   =   t e m p . r e p l a c e ( / \ ( m p 3 . p m \ ) / g ,   ' ' ) 
 	 	 } 
 	 	 
 	 	 o u t p u t   =   t e m p ; 
 	 	 r e t u r n   o u t p u t ; 
 	 }   
 	 	 
 } 
 
 o u t p u t   =   f i n d T r a c k ( ' i T u n e s ' ) ; 
 o u t p u t 
                              �jscr  ��ޭ