/* 
   First javascript feature used on each page in the footer for the email. 
*/


function stringReverse(textString) 
      {
          if (!textString) return '';
          var revString='';
          for (i = textString.length-1; i>=0; i--)
          revString+=textString.charAt(i)
          return revString;
      }



/*
   Second javascript feature to show current date and time. 
   Used on the about.html page
*/

function showDate(dateObj) 
      { 
         thisDate = dateObj.getDate(); 
         thisMonth = dateObj.getMonth()+1; 
         thisYear = dateObj.getFullYear(); 
         return thisMonth + "/" + thisDate + "/" + thisYear; 
      } 


function showTime(dateObj) 
      { 
          thisSecond=dateObj.getSeconds(); 
          thisMinute=dateObj.getMinutes(); 
          thisHour=dateObj.getHours(); 
 
           // change thisHour from 24-hour time to 12-hour time by: 
           // 1) if thisHour < 12 then set ampm to " a.m." otherwise set it to " p.m." 
                   var ampm = (thisHour < 12) ? " a.m." : " p.m."; 

           // 2) subtract 12 from the thisHour variable 
                   thisHour = (thisHour > 12) ? thisHour - 12 : thisHour; 

           // 3) if thisHour equals 0, change it to 12
                 thisHour = (thisHour == 0) ? 12 : thisHour;

           // add leading zeros to minutes and seconds less than 10 
                 thisMinute = thisMinute < 10 ? "0"+thisMinute : thisMinute; 
                 thisSecond = thisSecond < 10 ? "0"+thisSecond : thisSecond;

                 return thisHour + ":" + thisMinute + ":" + thisSecond + ampm; 
      }



function calcDays(currentDate) 
       { 
            // create a date object for January 1 of the next year 
                  newYear = new Date("January 1, 2011"); 
                  nextYear = currentDate.getFullYear()+1; 
                  newYear.setFullYear(nextYear);


            // calculate the difference between currentDate and January 1 
                   days = (newYear - currentDate)/(1000*60*60*24);

	           return days;

        }



/*
   Third Javascript feature to show a calendar.
   Shown on the about.html page
*/

function calendar(calendarDay) 
       { 
           if (calendarDay == null) calDate=new Date() 
           else calDate = new Date(calendarDay);

           document.write("<table id='calendar_table'>"); 
           writeCalTitle(calDate);
           writeDayNames();
           writeCalDays(calDate);
           document.write("</table>"); 
       }



function writeCalTitle(calendarDay) 
        { 
              var monthName = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"); 

              var thisMonth=calendarDay.getMonth(); 
              var thisYear=calendarDay.getFullYear(); 

              document.write("<tr>"); 
              document.write("<th id='calendar_head' colspan='7'>"); 
              document.write(monthName[thisMonth]+" "+thisYear); 
              document.write("</th>"); 
              document.write("</tr>");


        }

function writeDayNames() 
          { 
             var dayName = new Array("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"); 
             document.write("<tr>"); 


             for (var i = 0;i<dayName.length;i++) 
             { 
                     document.write("<th class='calendar_weekdays'> "+dayName[i]+ "</th>"); 
             } 
             document.write("</tr>"); 
          }


function daysInMonth(calendarDay) 
          { 
                  var thisYear = calendarDay.getFullYear();
                  var thisMonth = calendarDay.getMonth(); 
                  var dayCount = new Array(31,28,31,30,31,30,31,31,30,31,30,31);
                  if (thisYear % 4 == 0) 
                         { 
                           if ((thisYear % 100 != 0) || (thisYear % 400 == 0)) 
                                 { 
                                      dayCount[1] = 29; // this is a leap year 
                                  } 
                          }
 
                  return dayCount[thisMonth]; // return the number of days in the month 
            }




function writeCalDays(calendarDay) 
          {
              var currentDay = calendarDay.getDate();

              // determine the starting day of the week 
                      var dayCount = 1; 
                      var totalDays = daysInMonth(calendarDay); 
                      calendarDay.setDate(1); // set the date to the first day of the month 
                      var weekDay = calendarDay.getDay(); // the day of week of the first day

              // write blank cells preceding the starting day 
                     document.write("<tr>"); 
                     for (var i = 0; i < weekDay; i++) 
                     { 
                     document.write("<td></td>"); 
                     }

              // write cells for each day of the month
                    while (dayCount <= totalDays) 
                    { 

	       // write the table rows and cells 
	             if (weekDay == 0) document.write("<tr>"); 

	                    if (dayCount == currentDay) 
                                  { 
	                            // highlight the current day 
	                            document.write("<td class='calendar_dates' id='calendar_today'>"+dayCount+"</td>"); 
                            } else { 
                                    // display the day as usual 
                                    document.write("<td class='calendar_dates'>"+dayCount+"</td>"); 
                            }

                               if (weekDay == 6) document.write("</tr>");
                               // move to the next day 
                               dayCount++; 
                               calendarDay.setDate(dayCount); 
                               weekDay = calendarDay.getDay();

              }
                document.write("</tr>");

        }


/*
   Fourth javascript feature used to check the form filled out by the user
   Makes sure the user fills out each section before submitting the form
   Shown on the about.html page 
*/

window.onload = startForm; 


function startForm() 
      { 
	document.forms[0].onsubmit = checkForm2; 
      }

function checkForm2() 
         { 
             if (document.forms[0].fname.value.length == 0) 
                   {alert("You must enter a first name"); 
                   return false;} 
             else if (document.forms[0].lname.value.length == 0) 
                   {alert("You must enter a last name"); 
                   return false;}
             else if (document.forms[0].street.value.length == 0) 
                   {alert("You must enter a street address"); 
                   return false;} 
             else if (document.forms[0].city.value.length == 0) 
                    {alert("You must enter a city name"); 
                    return false;} 
             else if (checkZipRE(document.forms[0].zip.value) == false) 
                    {alert("Invalid zip code"); 
                    return false;}
              else return true; 
           }


function isNonNumeric(tString) 
          { 
               validchars = "0123456789"; 
               for (var i = 0; i < tString.length; i++) 
                       { 
               char = tString.charAt(i); 
                     if (validchars.indexOf(char) == -1) return true;
                       } 
                         return false; 
          }






