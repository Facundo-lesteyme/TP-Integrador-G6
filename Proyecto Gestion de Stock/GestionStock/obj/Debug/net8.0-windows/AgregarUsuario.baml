   M S B A M L   `   `   `  ����G  CGestionStock, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:GestionStockGestionStock  5   	   !    GestionStock.AgregarUsuario   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:GestionStock     5   	   -   5          �Name$  WinAgregarUsuario��5   	    � Title$ Nuevo Usuario��5   	   $	��450��6   $	��400��6,    � WindowStartupLocation$ CenterScreen=�5	   	    � WindowStyle$
 None=�5
   	    � AllowsTransparency$
 True��6   
������ .��5      ��  �� CornerRadius$ 10��6   ���	#FF2D2D30���	#FF007ACC$��2q�6N   ._�5   
   � $��20q�6    � ColumnDefinitions 5      �� 5      $��* �6#   .+�5      �� -   5         ��Name$ lblUsuarioNuevo��5      $��Nombre de usuario��6-   $
��Left=�6I   $	��Top=�6d   $��0,20,0,0q�5      $	��200��6&   $��Segoe UI)�62   $��14(�6H   
�������6V   �� 5      -   5         ��Name$ 	txtNombre��5      $
��Left=�6)   $	��Top=�6D   $��0,50,0,0q�5      $	��300��6(   $��30��64   $��Segoe UI)�5      $��14(�6,   ���	#FF3E3E42
����������	#FF007ACC$��1q�6|   �� 5      -   5        $ lblPasswdNuevo��5      $��Password��6,   $
��Left=�6?   $	��Top=�6Z   $��	0,100,0,0q�5      $	��200��6'   $��Segoe UI)�63   $��14(�6I   
�������6W   G� 5      -   5        	 G�Name$	 txtPassword��5      $
��Left=�6/   $	��Top=�6J   $��	0,130,0,0q�5      $	��300��6-   $��30��69   $��Segoe UI)�5      $��14(�60   ���	#FF3E3E42
����������	#FF007ACC$��1q�6�   �� 5       
 �� Orientation$
 
Horizontal=�6   $��Center=�62   $��Bottom=�6O   $��	0,200,0,0q�6j   .+�5!      �� -   5         ��Name$ BtnAgregarUsuario��5!      $��Agregar Usuario��64   $	��120��6N   $��35��6Z   $��Segoe UI)�5"      $��14(�6/   ���	#FF007ACC
����������	#FF007ACC6   �� 5$      -   5        $ BtnCerrarAgregar��5$      $��Cerrar��63   $	��120��6D   $��35��6P   $��Segoe UI)�5%      $��14(�6/   ���	#FF007ACC
����������	#FF007ACC6   5&      5'      5(      5)      