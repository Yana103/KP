   M S B A M L   `   `   `  ����L  HAptecaAlexandrova, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:AptecaAlexandrovaAptecaAlexandrova  5      !    AptecaAlexandrova.SalesEdit   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:AptecaAlexandrova     5        N� Title$  Продажи��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��
DGridSells��5         AutoGenerateColumns .     
IsReadOnly . $��Arial)�6S      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$! Номер операции��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6b   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Operation_number+6b     5      $ Дата��6%   $	 200 6L    63   �� *Date+6L     5      $ Стоимость��6%   $ 80 6P    68   �� *Sum+6P     5      $ Статус оплаты��6%   $	 140 6W    6<   �� *Status+6W   4  .System.Windows.Controls.DataGridTemplateColumn  5      $	 285 6)      CellTemplate 5      �� 5      .R�5      �� $��BtnEdit��6=   -   5        $ ��Редактировать��5   %   6L   5      5      5      �� 5   
   	 �� Orientation$	 
Horizontal=�6   $��1��6/   $��Center=�6=   $��Center=�6Z   .+�5       o� .@�5!      �� $��Поиск:��6   �� 5"      -   5        $��TBoxSearch1��5"   2   $	��400��6   $��35��6&   $��22(�6k   $��DemiBold"�6y   5#      5$      �� 5%   
   -   5        $��BtnAdd��5%      $��Добавить��64   $��1��6G   $
��Left=�6T   $	��300��6o   
�������
�������$��32(�6�   $��DemiBold"�6�   ���	#FF4A67F7$��Arial)�6�   ]� 5&   
   $��1��6   $��Right=�6!   .+�5'      �� -   5        $��BtnDel��5'      $��Удалить��68   $	��150��6J   $��0 0 10 0q�6V   
�������
�������$��32(�6�   $��DemiBold"�6�   ���	#FFE65C5C$��Arial)�6�   �� 5(      -   5        $��BtnForm��5(      $��
Отчет��6:   $	��150��6J   
�������
�������$��32(�6}   $��DemiBold"�6�   ���	#FF4A67F7$��Arial)�6�   5)      5*      5+      