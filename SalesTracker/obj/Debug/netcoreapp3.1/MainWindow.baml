   M S B A M L   `   `   `  ����G  CSalesTracker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:SalesTrackerSalesTracker  5   	       SalesTracker.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:SalesTracker     5   	     � Title$  Anmeldung-Fenster��5   	   $	��450��6#   $	��800��60    � 
ResizeMode$ NoResize=�6<    � WindowStartupLocation$ CenterScreen=�6R   .��5	      � .+�5   
   �� $
��Left=�6   $	��434��6/   ���	#FF8EE5FA$��Center=�6O   $	��209��6j   ���	#FF8EE5FA6v   �� 5   
   -   5        $��openRegistrationWindow��5      $��Admin-Konto erstellen��6/   $
��Left=�6O   $��0,77,0,0q�6j   $	��Top=�6|   $	��209��6�   $��53��6�   ���	#FF40DEDE���	#FF40DEDE6�   �� 5   
   -   5        $��OpenConnectionWindowBtn��5      $��	Anmeldung��60   $
��Left=�6D   $��	0,130,0,0q�6_   $	��Top=�6r   $	��209��6�   $��53��6�   ���	#FF40DEDE���	#FF40DEDE6�   �� 5   
   -   5        $��closeBtn��5      $��Anwendung schließen��6!   $
��Left=�6?   $��	0,183,0,0q�6Z   $	��Top=�6m   $	��209��6�   $��53��6�   ���	#FF40DEDE���	#FF40DEDE6�   �� 5   
   -   5        $��addBookWindowsBtn��5      $��Buch hinzufügen��6*   $
��Left=�6D   $��	0,236,0,0q�6_   $	��Top=�6r   $	��209��6�   $��53��6�   ���	#FF40DEDE���	#FF40DEDE6�   �� 5   
   -   5        $��viewBooksBtn��5      $��Bücher ansehen��6%   $
��Left=�6>   $��	0,289,0,0q�6Y   $	��Top=�6l   $	��209��6�   $��53��6�   ���	#FF40DEDE���	#FF40DEDE6�   �� 5   
   $
��Left=�6   $	��434��6/   $��	209,0,0,0q�6<   ���	#FF8EE5FA$��Center=�6b   $	��591��6}   ���	#FF8EE5FA6�   �� 5   
   $��E-Mail��6   $
��Left=�6!   $��271,117,0,0q�6<   $	��Top=�6Q    J� RenderTransformOrigin$ -0.094,0.415&�6i   $��31��6�   $	��105��6�   �� 5   
   -   5        $��emailTB��5      $
��Left=�6!   $��400,117,0,0q�6<   $�� ��6Q    �� TextWrapping$
 Wrap=�6Y   $	��Top=�6m   $	��226��6�   $��31��6�   $
��Left=�6�   $��Center=�6�   �� 5   
   $��Password��6   $
��Left=�6#   $��271,156,0,0q�6>   $	��Top=�6S   $ -0.094,0.415&�6k   $��32��6�   $	��105��6�   �� 5   
   -   5        $��
passwordTB��5      $
��Left=�6$   $��401,158,0,0q�6?   $�� ��6T   $
 Wrap=�6\   $	��Top=�6p   $	��225��6�   $��30��6�   $
��Left=�6�   $��Center=�6�   �� 5   
   -   5        $��	Anmeldung��5      $
��Left=�6%   $��530,210,0,0q�6@   $	��Top=�6U   $��38��6m   $��96��6y   ���	#FF40DEDE6�   �� 5   
   -	   5        $��adminNameTB��5      $
��Left=�6'   $��299,308,0,0q�6B   $�� ��6W   $
��Wrap=�6_   $	��Top=�6s   $	��291��6�   $��27��6�    �� Padding$ 0,3,0,0q�6�   5      5      