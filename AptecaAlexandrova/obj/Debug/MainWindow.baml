   M S B A M L   `   `   `  ����L  HAptecaAlexandrova, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:AptecaAlexandrovaAptecaAlexandrova  5   	   "    AptecaAlexandrova.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:AptecaAlexandrova     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$W  QАвторизация информационной системы 'Аптека'��5	   	   $	��450��6=   $	��800��6J    � Icon$ /Resources/icon.ico��6V   .��5
      � ��5   
   �� 5       j� TileMode$
 None=�6    j� Stretch$
 Fill=�6)    �� ImageSource$ /fon.png��68    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   � $��1��6   $��50q�6   ��5      �� 5       �� Color$ 	#FFBBE0F9��6"    �� Opacity$	 0.5Q�64    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5       �� $��Sign in��6   $��0��6'   $��Bottom=�64   $��Center=�6O   $��60(�6l   ���	#FF4D8CFF$��Arial Black)�6�   6�   �� 5!      $��Login��6   $��40 0 0 0q�6%   $��1��67   $��Center=�6D   $
��Left=�6_   $��18(�6z   ���	#FF0C8AF9$��Arial)�6�   6�   �� 5"      -   5        	 ��Name$		 Log��5"   �   $��2��6(   $��Center=�65   $��Center=�6P   $	��205��6m   $��18(�6y   $��25��6�   ���	#FF486CDA���	#FF486CDA6�   �� 5#      $��Password��6   $��40 0 0 0q�6(   $��3��6:   $��Center=�6G   $
��Left=�6b   $��18(�6}   ���	#FF0C8AF9$��Arial)�6�   6�   G� 5$      -   5        
 G�Name$

 Pass��5$   �   $��4��6-   $��Center=�6:   $��Center=�6U   $	��205��6r   $��18(�6~   $��25��6�   ���	#FF486CDA���	#FF486CDA6�   �� 5%      $
��Code��6   $��40 0 0 0q�6$   $��5��66   $��Center=�6C   $
��Left=�6^   $��18(�6y   ���	#FF0C8AF9$��Arial)�6�   6�   ]� 5&      $��6��6   $��Center=�6%   $��Center=�6@   .+�5'      �� -   5        $
	 Code��5'   o   $	��180��6   $��18(�6&   $��25��64   ���	#FF486CDA���	#FF486CDA6   �� 5(      -   5         ��Name$ Refresh��5(      $��25��6@   $��25��6L   ���	#FF486CDA.��5)      �� $��/Resources/strelka.png��6    J� OpacityMask �	#FF83BDF06<   5*      5+      �� 5,      -   5        $ Login��5,      $	��Top=�68   $��Center=�6P   $��7��6m   $��Continue��6z   $��32��6�   $��90��6�   $��18(�6�   $��0,31,0,0q�6�   ���	#FF88A1EE���	#FF83BDF0
�������$��Arial)�6  6  5-      �� 5.   
   $��/Resources/login1.png��6   $��0��6/   $	��300��6?   $��	100 0 0 0q�6L   �� 5/   
   -   5        $ ClearBut��5/      $��Clear��6#   ���	#FF83BDF0���	#FF88A1EE
�������$��263,286,67,0q�6u   $	��Top=�6�   $��34��6�   $��1��6�   $��18(�6�   $��Arial)�6�   50      51      