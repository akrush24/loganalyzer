#!/usr/bin/perl -ws
$host = $ARGV[0];

$input = $ARGV[1];
open (IN, "<$input") || die $!;

$output = $ARGV[2];
open (OUT, ">$output") || die $!;

while(<IN>){
  # находим нужные строки
  if( 
  ( 
	/failed/i  || 
	/WARNING:\sNMP/ || 
	#/WARNING:\sVSCSIFs:/ ||
	/nmp_ThrottleLogForDevice:/ || 
	/Waiting\sfor\stimed\sout/ || 
	/iscsi_vmk/ || 
	/PEG_HALT_STATUS1:\ 0x40006701,\ PEG_HALT_STATUS2/ || # NIC10G is Dead
	/because\ its\ ramdisk\ \(tmp\)\ is\ full/ ||
	/Host\ adapter\ abort\ request/ ||
	/is\ using\ my\ IP\ address/
  ) && 
	!/UserObj/ && 
	!/H:0x0 D:0x2 P:0x0/ && 
	!/No\ free\ memory\ for\ file\ data/ && 
	!/Transient\ file\ system\ condition,\ suggest\ retry/ &&
	!/Failed\ to\ flush\ file\ times:\ Stale\ file\ handle/
  )
  {

	# поиск и замена
	s/naa.600a0b8000688be10000adbd51c24ee0/DS3300_r2p1/g;
	s/naa.60080e500024258600001ca2514a0b47/DS3500_lun0/g;
	s/naa.60080e50002429340000526a514a0d0a/DS3500_lun1/g;
	s/naa.600c0ff00011347d9b20f74f01000000/P2000g3_R10/g;
	s/naa.600c0ff000113366f57c095001000000/P2000g3_R6/g;

	# уникальная фильтрация по хостам
	if    ($host eq 'esx-11' || $host eq 'esx-11.at-consulting.ru'){print OUT if(!/mpx.vmhba0:C3:T0:L0/);}
	elsif ($host eq 'esx-09' || $host eq 'esx-09.at-consulting.ru'){print OUT if(!/mpx.vmhba2:C3:T0:L0/);} 
	elsif ($host eq 'esx-10' || $host eq 'esx-10.at-consulting.ru'){print OUT if(!/mpx.vmhba1:C3:T0:L0/);} 
	elsif ($host eq 'esx-mcu' || $host eq 'esx-mcu.at-consulting.ru'){print OUT if(!/min\ admission\ check\ failed\ for\ group/);}
        elsif ($host eq 'ars-vm21' || $host eq 'ars-vm21.at-consulting.ru'){print OUT if(!/600508e000000000590bcdd6077fc101/);}
	else  {print OUT;}

  };

}

close OUT;
close IN;

