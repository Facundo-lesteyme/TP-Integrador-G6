   M S B A M L   `   `   `  ����G  CGestionStock, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:GestionStockGestionStock  5   	       GestionStock.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:GestionStock     5   	   -   5          �Name$  WinLogin��5   	    � Title$ Login��5   	   $	��470��6   $	��625��6$    � WindowStyle$
 None=�60    � AllowsTransparency$
 True��5	   	   
������ $��Segoe UI)�5
   	   $��20(�6    � WindowStartupLocation$ CenterScreen=�6-   .��5      ��  �� CornerRadius$ 20��6   ���#2D2D30���#00ADA5$��2q�6J    �� Padding$ 20q�6^   ._�5   
   � 
������  � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $��* �6    .+�5      � $��0��6   
����� �$��50��62   $	��Top=�6>   .+�5      �� $��Login��6   
���   �$��24(�6<   $��Center=�6J   $��Center=�6e   5      � 5      $��1��6   $��20q�6     5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5       $
��Auto �6$   �� 5!      $
��Auto �6$   �� 5"      $
��Auto �6$   .+�5%      �� $��0��6   $��Usuario��6%   
�������$��16(�6J   $��66,30,-65,35q�6X   $��2��6n   �� 5&      -   5         ��Name$ 
txtUsuario��5&   '   $��1��6   $��30��6;   $��16(�6G   $��5q�6U   $��146,12,99,0q�6a   ���#393E46
�������$��0q�5'   B   $	��Top=�6V   �� 5)      $��2��6   $��Password��6%   
�������$��16(�6K   $��65,30,-65,35q�6Y   $��2��6o   G� 5*      -   5        	 G�Name$	 txtPassword��5*   +   $��3��6   $��30��6@   $��16(�6L   $��5q�6Z   $��146,12,99,0q�6f   ���#393E46
�������$��0q�5+   F   $	��Top=�6Z   �� 5-      $��4��6   
 �� Orientation$
 
Horizontal=�6*   $��Center=�6C   $��0,20,0,0q�6`   .+�5.      �� -   5         ��Name$ BtnLogin��5.      $��Login��6/   $	��100��6?   $��35��6K   $��10q�6W   ���#00ADB5
���   �$��16(�5/   E   $��0q�6S   �� 51      -   5        $ BtnAgregarUsuario��51      $��Agregar Usuario��68   $	��150��6R   $��35��6^   $��10q�6j   ���#00ADB5
���   �$��16(�52   E   $��0q�6S   �� 54      -   5        $ 	BtnCerrar��54      $��Cerrar��60   $	��100��6A   $��35��6M   $��10q�6Y   ���#FF3F4E
�������$��16(�55   E   $��0q�6S   56      58      59      5:      5;      