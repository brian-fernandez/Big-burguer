function ImprimeDiv() {
    var divToPrint = document.getElementById('printable');
    var newWin = window.open('', 'Print-Window', 'width=400,height=100');
    newWin.document.open();
    newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
    newWin.document.close();
    setTimeout(function () { newWin.close(); }, 10);
}



function ImprimeDiv4() {
    var divToPrint = document.getElementById('imprimirresivo');
    var newWin = window.open('', 'Print-Window', 'width=400,height=100');
    newWin.document.open();
    newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
    newWin.document.close();
    setTimeout(function () { newWin.close(); }, 10);
}










function imprimePanel() {
    var printContent = document.getElementById("<%=Panel3.ClientID%>");
    var windowUrl = 'about:blank';
    var uniqueName = new Date();
    var windowName = 'Print' + uniqueName.getTime();
    var printWindow = window.open(windowUrl, windowName, 'left=50000,top=50000,width=0,height=0');

    printWindow.document.write(printContent.innerHTML);
    printWindow.document.close();
    printWindow.focus();
    printWindow.print();
    printWindow.close();
}



