   M S B A M L   `   `   `  ����L  HAptecaAlexandrova, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:AptecaAlexandrovaAptecaAlexandrova  5   	   #    AptecaAlexandrova.AdminWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:AptecaAlexandrova     5   	     � Title$0  *Главное окно провизора��5   	   $	��450��6(   $	��800��65    � 
ResizeMode$ NoResize=�6A    � WindowState$ 	Maximized=�6W    � Icon$ /Resources/icon.ico��6o   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $	��23* �6   �� 5      $
��237* �6   .+�5   
   � $��0��6    � RowDefinitions 5      �� 5      $��* �6    �� 5      $��* �6    �� 5      $��* �6    �� 5      $��* �6    .+�5      �� -   5        $��Store��5      $��
Склад��6"   $��50��6F   $	��280��6R   $��20(�6^   $��DemiBold"�6l   $��Center=�6�   $��Center=�6�   ���	#FFFFFCFC���	#FF4A67F7
�������$��Arial)�6�   �� 5      -   5        $��Sales��5      $��Продажи��6"   $��1��6H   $��50��6V   $	��280��6b   $��20(�6n   $��DemiBold"�6|   $��Center=�6�   $��Center=�6�   ���	#FF4A67F7
�������
�������$��Arial)�6  �� 5      -   5        $
��Exit��5      $��
Выйти��6!   $��3��6D   $��50��6Q   $	��280��6]   $��20(�6i   $��DemiBold"�6w   $��Center=�6�   $��Center=�6�   ���	#FF4A67F7
�������
�������$��Arial)�6  5       � 5   
   -   5          �Name$ 	MainFrame��5       J� Opacity$	 0.8Q�6#   
���   �$	��2.5q�6E     � NavigationUIVisibility$ Hidden=�6[   $��1��6{   $��2��6�   5      5      5      