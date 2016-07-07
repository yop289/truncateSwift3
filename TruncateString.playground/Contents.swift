//: Playground - noun: a place where people can play

//: Playground - noun: a place where people can play

import Foundation

extension String {
    func truncate(length: Int, trailing: String = "...") -> String {
        if self.characters.count > length {
            let firstPartIndex = self.characters.index(self.characters.startIndex, offsetBy: length)
            //we get the string splitted from length
            let secondString = self.substring(from: firstPartIndex)
            // calculate index to the first space coincidence
            if let firstSpace = secondString.characters.index(of: " ") {
                // We transform the index to int value using distance
                let numberToSpace = self.distance(from: secondString.characters.startIndex, to: firstSpace)
                // We generated the new index for new string
                let finalStringIndex = self.characters.index((self.characters.startIndex), offsetBy: length + numberToSpace)
                //we get the truncated string
                let finalString = self.substring(to: finalStringIndex)
                
                return finalString + trailing
            }
        }
        
        return self
    }
}

// Example
let str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consequat elementum nulla, id convallis magna varius sit amet. Suspendisse fringilla interdum aliquam. Sed mauris metus, euismod id egestas luctus, pulvinar sit amet lectus. Nunc volutpat nec turpis quis pretium. Sed efficitur a nibh ut luctus. Mauris blandit ultrices venenatis. Etiam tincidunt neque purus, eu hendrerit magna porttitor non. Vestibulum feugiat, quam sit amet varius suscipit, lacus sem tincidunt nibh, et lobortis metus lectus sit amet risus. Proin vestibulum turpis ac ultrices feugiat. In at finibus lacus. Sed ligula diam, pharetra quis erat a, iaculis elementum metus. Praesent luctus, orci at rutrum hendrerit, lorem massa fermentum nisl, in convallis leo tortor vitae est./nMauris laoreet lorem vitae enim pretium faucibus. Nam vestibulum volutpat ipsum ac tristique. Nam viverra placerat purus, id feugiat purus gravida non. Donec a suscipit dui, vel egestas ante. Morbi ullamcorper felis et ipsum efficitur pulvinar. Maecenas ut tincidunt tellus. Aenean quis vestibulum sapien. Fusce non hendrerit eros. Nam sodales sapien vitae gravida mattis. Aenean rutrum lacus sed dictum consequat. Cras eu risus posuere, cursus tellus ornare, tincidunt turpis. Morbi et lectus enim.Proin lobortis facilisis purus, et vehicula massa efficitur nec. Quisque vel laoreet libero. Sed iaculis eros ex, sit amet imperdiet elit tempor et. Donec pellentesque maximus sem id pulvinar. Sed tellus elit, pulvinar ac est non, consequat bibendum lacus. Suspendisse vitae diam ut diam faucibus lobortis a eu elit. Nullam cursus sollicitudin dignissim. Fusce leo tellus, gravida at lorem nec, mattis porta magna. Maecenas ligula ante, tristique eget ultrices ac, aliquet et mi. Duis pharetra imperdiet nisl, eget semper enim elementum sed. Etiam condimentum condimentum suscipit. Proin sagittis ligula et diam porta interdum. Maecenas vehicula gravida volutpat. Duis velit urna, rhoncus eu tortor sed, accumsan vehicula odio.In et turpis diam. Duis cursus vel odio ac pretium. Phasellus sit amet pretium tellus, id vulputate arcu. Praesent facilisis lorem vel placerat imperdiet. Sed id augue non nulla laoreet aliquam. Etiam maximus purus eget tincidunt cursus. Vestibulum eu massa nisi. Donec suscipit mauris vitae quam vehicula finibus. Nam convallis justo at nibh fringilla, vel tincidunt tortor tincidunt. Etiam tempus maximus odio, ac elementum massa porta eget. Vivamus pharetra finibus lectus at varius. Aenean sed rhoncus turpis. Aliquam euismod elit tellus, sit amet mollis ante tincidunt in. Nunc nec risus volutpat, vehicula augue et, congue lorem. Vestibulum ut erat non ipsum laoreet dignissim sed in ligula.Mauris vitae porta tortor. Etiam placerat ipsum augue, vel pretium nisl imperdiet vitae. Maecenas viverra magna ut varius consectetur. Mauris id turpis tincidunt, feugiat risus at, dictum eros. Cras commodo a dui aliquet euismod. Vivamus nisl magna, bibendum ac sagittis at, faucibus nec nibh. Vestibulum ut auctor enim. Aliquam sit amet lorem eros. Phasellus iaculis aliquet aliquet. Suspendisse fermentum sed odio nec gravida. Aliquam porttitor ac risus ut egestas. Morbi maximus nec lorem vitae volutpat. Nulla pharetra odio lectus, sed ultricies sapien aliquet vitae. Sed orci libero, posuere ac lacus quis, feugiat imperdiet orci. Cras porta id nibh sed porttitor. Quisque eget ligula blandit, ultrices eros at, tincidunt sapien.Phasellus auctor sollicitudin felis sit amet aliquam. Vivamus rhoncus eget nisi eleifend posuere. Suspendisse at scelerisque ligula, eget dignissim massa. Sed maximus enim tortor, vel fringilla lectus rhoncus sit amet. Fusce sapien nulla, dictum sed sapien convallis, consectetur aliquet felis. Praesent vitae sollicitudin nulla. Aliquam sollicitudin id nibh quis dignissim. Praesent libero purus, faucibus ut varius sit amet, aliquam ac tortor. Vivamus at odio pretium, lobortis ante sed, consequat orci. Pellentesque in ex pulvinar, tempus ligula quis, ultrices orci. Nulla facilisi. Aenean eget nisi nisi. Sed rhoncus in nisl at laoreet. Vestibulum faucibus congue augue, vitae ullamcorper lorem.Quisque fringilla pharetra libero, vulputate convallis arcu blandit ac. Praesent et magna ac magna mollis laoreet. Ut pulvinar ut risus eu porta. Quisque suscipit odio vel convallis viverra. Aenean in ipsum maximus nisi vestibulum dignissim. Integer ultricies fermentum leo, non feugiat risus venenatis eget. Cras tincidunt neque quis justo fermentum, ut auctor libero scelerisque. Proin imperdiet dui neque, aliquam mollis erat laoreet vitae. Vestibulum luctus quam at massa aliquet, ut feugiat orci vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla vitae bibendum turpis. Cras vitae odio mi. Donec sit amet metus eu erat mollis ultrices et vitae justo. Ut bibendum diam a tortor tempus rutrum. Nunc fringilla elit sapien, sit amet tempus mauris mattis at. Curabitur vulputate auctor diam, a pulvinar erat vehicula vitae.Nullam eget commodo nibh. Sed tincidunt viverra sem. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce et varius dui. Vestibulum iaculis risus odio, ut condimentum dui feugiat vitae. Aliquam commodo lacus leo, ut dignissim ante ultrices sed. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In nec volutpat nulla, mattis pretium metus. Aenean consequat sodales ante sagittis."


var start = NSDate(); // <<<<<<<<<< Start time
print(str.truncate(length: 3048))
var end = NSDate();

var timeInterval: Double = end.timeIntervalSince(start as Date); // <<<<< Difference in seconds (double)
