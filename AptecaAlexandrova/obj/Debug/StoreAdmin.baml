   M S B A M L   `   `   `  ����L  HAptecaAlexandrova, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:AptecaAlexandrovaAptecaAlexandrova  5      "    AptecaAlexandrova.StoreAdmin   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:AptecaAlexandrova     5        N� Title$  Медикаменты��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��DGridApteca��5         AutoGenerateColumns .     
IsReadOnly . $��Arial)�6T      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$' !Дата изготовления��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 180 6a   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *Receipt_date+6a     5      $ Название��6%   $	 100 6Z    67   �� *Name_medicines+6Z     5      $4 .Окончание срока годности��6%   $	 200 6k    6G   �� *Expiration_date+6k     5      $ Цена��6%   $ 80 6M    63   �� *Price+6M     5      $ Количество��6%   $	 140 6V    69   �� *
Quantity+6V   4  .System.Windows.Controls.DataGridTemplateColumn  5      $	 285 6)      CellTemplate 5      �� 5      .R�5      �� $��BtnEdit��6S   -   5        $ ��Редактировать��5   %   6S   5      5      5      �� 5    
   	 �� Orientation$	 
Horizontal=�6   $��1��6/   $��Center=�6=   $��Center=�6Z   .+�5!      o� .@�5"      �� $��Поиск:��6   �� 5#      -   5        $��TBoxSearch1��5#   2   $	��400��6   $��35��6&   $��22(�6l   $��DemiBold"�6z   5$      5%      �� 5&   
   -   5        $��BtnAdd��5&      $��Добавить��64   $��1��6G   $
��Left=�6T   $	��300��6o   
�������
�������$��32(�6�   $��DemiBold"�6�   ���	#FF4A67F7$��Arial)�6�   ]� 5'   
   $��1��6   $��Right=�6!   .+�5(   
   �� -   5        $��BtnDel��5(      $��Удалить��64   $	��150��6G   $��0 0 10 0q�6S   
�������
�������$��32(�6�   $��DemiBold"�6�   ���	#FFE65C5C$��Arial)�6�   �� 5)   
   -   5        $��BtnForm��5)      $��
Отчет��66   $	��150��6F   
�������
�������$��32(�6y   $��DemiBold"�6�   ���	#FF4A67F7$��Arial)�6�   5*      5+      5,      